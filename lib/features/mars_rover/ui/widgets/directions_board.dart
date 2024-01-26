import 'package:detector/features/mars_rover/persistence/blocs/grid_cubit/grid_cubit.dart';
import 'package:detector/helpers/enums.dart';
import 'package:flutter/material.dart';

class DirectionsBoard extends StatelessWidget {
  const DirectionsBoard({
    super.key,
    required this.gridCubit,
    required this.size,
  });
  final GridCubit gridCubit;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height / 4,
                  width: 60,
                  child: _control(
                    Icons.keyboard_arrow_up_outlined,
                    RoverDirection.north,
                    gridCubit.direction == RoverDirection.north,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.height / 4,
                      height: 60,
                      child: _control(
                        Icons.keyboard_arrow_left_outlined,
                        RoverDirection.west,
                        gridCubit.direction == RoverDirection.west,
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    SizedBox(
                      width: size.height / 4,
                      height: 60,
                      child: _control(
                        Icons.keyboard_arrow_right_outlined,
                        RoverDirection.east,
                        gridCubit.direction == RoverDirection.east,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: size.height / 4,
                  width: 60,
                  child: _control(
                    Icons.keyboard_arrow_down_outlined,
                    RoverDirection.south,
                    gridCubit.direction == RoverDirection.south,
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Selected direction',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  InkWell _control(IconData icon, RoverDirection direction, bool selected) {
    const color = Colors.white;
    return InkWell(
      onTap: () {
        gridCubit.setDirection(direction);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: selected ? Colors.green : Colors.red,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: color,
            ),
            Text(
              direction.name.toUpperCase(),
              style: const TextStyle(color: color),
            ),
          ],
        ),
      ),
    );
  }
}
