import 'package:detector/features/mars_rover/persistence/blocs/grid_cubit/grid_cubit.dart';
import 'package:detector/features/mars_rover/persistence/blocs/mars_rover_cubit/mars_rover_cubit.dart';
import 'package:detector/features/mars_rover/persistence/models/grid_size.dart';
import 'package:detector/features/mars_rover/ui/screens/interactive_grid.dart';
import 'package:detector/features/mars_rover/ui/widgets/board_actions.dart';
import 'package:detector/features/mars_rover/ui/widgets/grid.dart';
import 'package:detector/features/mars_rover/ui/widgets/hole_clipper.dart';
import 'package:detector/features/mars_rover/ui/widgets/information_screen.dart';
import 'package:detector/features/mars_rover/ui/widgets/ripple_animation.dart';
import 'package:detector/features/mars_rover/ui/widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Offset> obstacles = [];
  late GridSize gridSize;
  final TextEditingController _textEditingController = TextEditingController();
  Offset _position = Offset.zero;
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    final gridCubit = context.watch<GridCubit>();
    final size = MediaQuery.of(context).size;
    gridSize = gridCubit.gridSize;
    obstacles = gridCubit.obstacles;
    final gridCelSize = size.width / gridCubit.gridSize.dx;
    final marsRoverCubit = context.read<MarsRoverCubit>();

    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: gridCelSize * gridSize.dy,
        width: size.width,
        child: BlocConsumer<MarsRoverCubit, MarsRoverState>(
          bloc: marsRoverCubit,
          listener: (context, state) {
            state.mapOrNull(
              position: (position) {
                setState(() {
                  _position = position.position;
                });
              },
            );
          },
          builder: (context, state) {
            color = state.maybeMap(
              position: (_) => Colors.greenAccent,
              error: (_) => Colors.red,
              finish: (_) => Colors.blue,
              orElse: () => Colors.white,
            );
            return SizedBox(
              height: gridCelSize * gridSize.dy,
              width: size.width,
              child: Stack(
                children: [
                  state.maybeMap(
                    position: (position) {
                      return _animatedGrid(
                          size, gridCelSize, position.position);
                    },
                    error: (position) {
                      return _animatedGrid(
                          size, gridCelSize, position.position);
                    },
                    orElse: () => Opacity(
                      opacity: 0,
                      child: SizedBox(
                          height: size.height, width: size.width, child: grid),
                    ),
                  ),
                  RippleAnimationWidget(
                    child: Center(
                      child: SizedBox(
                        width: gridCelSize,
                        height: gridCelSize,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border: Border.all(width: 10, color: color),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IgnorePointer(
                    ignoring: false,
                    child: SizedBox(
                      height: size.height,
                      width: size.width,
                      child: ClipShadowPath(
                        shadow: BoxShadow(
                            color: color.withOpacity(1),
                            blurRadius: 30,
                            spreadRadius: 30),
                        clipper: HoleClipper(diameter: size.height * 0.7),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 36, 32, 32)
                                .withOpacity(0.8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      left: 50,
                      bottom: 0,
                      top: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BoardActions(
                            dx: _position.dx,
                            dy: _position.dy,
                            gridCount: gridCubit.gridSize.dx,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                marsRoverCubit.reset();
                                gridCubit.reset();
                                obstacles.clear();
                                color = Colors.white;
                              });
                            },
                            child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.greenAccent,
                                        blurRadius: 5,
                                        spreadRadius: 5)
                                  ],
                                  border: Border.all(
                                      color: Colors.greenAccent, width: 2),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Reset Game',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.greenAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: size.height / 2,
                            height: size.height / 4,
                            child: TextFormField(
                                controller: _textEditingController,
                                maxLines: null,
                                maxLength: null,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                style: const TextStyle(
                                    color: Colors.greenAccent, fontSize: 20),
                                validator: (value) {
                                  final RegExp regExp = RegExp(r'^[FLR]+$');
                                  if (!regExp.hasMatch(value!)) {
                                    return 'Only F,L,R are allowed';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                    hintText: 'Enter Commands',
                                    hintStyle: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    border: OutlineInputBorder())),
                          )
                        ],
                      )),
                  Positioned(
                      right: 30,
                      top: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          InteractiveGrid(grid: grid)));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InformationScreen(
                                    size: size,
                                    color: color,
                                    text: state.maybeMap(
                                      position: (position) => 'MOVING',
                                      error: (value) =>
                                          'ERROR\n${value.message}',
                                      finish: (value) => 'Congratulations!!\n'
                                          'You have reached the destination',
                                      orElse: () => obstacles.isEmpty
                                          ? 'Click to Add obstacles'
                                          : 'Push to start',
                                    )),
                                const SizedBox(
                                  height: 40,
                                ),
                                RoundButton(
                                    text: 'Push',
                                    onTap: () {
                                      context
                                          .read<MarsRoverCubit>()
                                          .executeCommand(
                                            direction: gridCubit.direction,
                                            position: gridCubit.startPosition,
                                            instructions:
                                                _textEditingController.text,
                                            obstacles: gridCubit.obstacles,
                                            gridSize: gridCubit.gridSize,
                                          );
                                    },
                                    size: size)
                              ],
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  AnimatedPositioned _animatedGrid(
      Size size, double gridCelSize, Offset position) {
    return AnimatedPositioned(
      duration: const Duration(seconds: 1),
      bottom: size.height / 2 - gridCelSize - gridCelSize * position.dy,
      left: size.width / 2 - gridCelSize / 2 - gridCelSize * position.dx,
      child: SizedBox(
        height: gridCelSize * gridSize.dy,
        width: size.width,
        child: grid,
      ),
    );
  }

  MarsGrid get grid => const MarsGrid();
}
