import 'package:detector/features/mars_rover/persistence/blocs/grid_cubit/grid_cubit.dart';
import 'package:detector/features/mars_rover/ui/widgets/directions_board.dart';
import 'package:detector/features/mars_rover/ui/widgets/grid_size_slider.dart';
import 'package:detector/features/mars_rover/ui/widgets/round_button.dart';
import 'package:detector/helpers/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Grid widget to select the grid size, start position and obstacles
class MarsGrid extends StatefulWidget {
  const MarsGrid({
    super.key,
  });

  @override
  State<MarsGrid> createState() => _MarsGridState();
}

class _MarsGridState extends State<MarsGrid> {
  final ScrollController _scrollController = ScrollController();
  bool check = true;
  @override
  void initState() {
    super.initState();
    if (check) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.jumpTo(
          _scrollController.position.maxScrollExtent,
        );
        check = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final gridCubit = context.watch<GridCubit>();
    final gridSize = gridCubit.gridSize;
    final gridCelSize = size.width / gridSize.dx;
    var gridState = gridCubit.gridState;
    final startPosition = gridCubit.startPosition;
    final obstacles = gridCubit.obstacles;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      extendBodyBehindAppBar: true,
      body: BlocConsumer<GridCubit, GridState>(
        bloc: gridCubit,
        listener: (context, state) {},
        builder: (context, state) {
          return ColoredBox(
              color: Colors.black,
              child: Stack(
                children: [
                  Opacity(
                    opacity: gridState == GridStateEnum.startPosition ||
                            gridState == GridStateEnum.obstacles
                        ? 1
                        : 0,
                    child: GridView.builder(
                      controller: _scrollController,
                      itemCount: gridSize.dx * gridSize.dy,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: gridSize.dx,
                      ),
                      itemBuilder: (context, index) {
                        final row = gridSize.dy - index ~/ gridSize.dy - 1;
                        final column = index % gridSize.dx;
                        final offset =
                            Offset(column.toDouble(), row.toDouble());
                        final isStartPosition = startPosition == offset;
                        final isObstacle = obstacles.contains(offset);
                        return InkWell(
                          onTap: () {
                            if (gridState == GridStateEnum.startPosition) {
                              gridCubit.addStartPosition(
                                  Offset(column.toDouble(), row.toDouble()));
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Colors.red,
                                  duration: Duration(seconds: 1),
                                  content: Text(
                                    'Now Add the Obstacles',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              );
                              gridCubit.gridState = GridStateEnum.obstacles;
                            } else {
                              setState(() {
                                gridCubit.addObstacle(
                                    Offset(column.toDouble(), row.toDouble()));
                              });
                            }
                          },
                          child: SizedBox(
                            width: gridCelSize,
                            height: gridCelSize,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: isStartPosition
                                    ? Colors.blue
                                    : isObstacle
                                        ? Colors.red
                                        : Colors.transparent,
                                border:
                                    Border.all(color: Colors.green, width: 1),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 1000),
                    child: switch (gridState) {
                      GridStateEnum.initial => Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DirectionsBoard(
                              gridCubit: gridCubit,
                              size: size,
                            ),
                            GridSizeSlider(gridCubit: gridCubit, size: size),
                            RoundButton(
                                text: 'Set\nPosition',
                                onTap: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      backgroundColor: Colors.blue,
                                      duration: Duration(seconds: 1),
                                      content: Text(
                                        'Select Start Position',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  );
                                  gridCubit.gridState =
                                      GridStateEnum.startPosition;
                                },
                                size: size),
                          ],
                        ),
                      GridStateEnum.startPosition ||
                      GridStateEnum.obstacles =>
                        const SizedBox(),
                      GridStateEnum.finished => const SizedBox(),
                    },
                  ),
                ],
              ));
        },
      ),
    );
  }

  Widget screen(GridStateEnum state) {
    return switch (state) {
      GridStateEnum.initial => const SizedBox(),
      GridStateEnum.startPosition ||
      GridStateEnum.obstacles =>
        const SizedBox(),
      GridStateEnum.finished => const SizedBox(),
    };
  }
}
