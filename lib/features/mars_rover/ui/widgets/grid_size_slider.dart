import 'package:detector/features/mars_rover/persistence/blocs/grid_cubit/grid_cubit.dart';
import 'package:detector/features/mars_rover/persistence/models/grid_size.dart';
import 'package:flutter/material.dart';

class GridSizeSlider extends StatelessWidget {
  const GridSizeSlider({
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
        Text(
          '${gridCubit.gridSize.dx}X${gridCubit.gridSize.dy}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Slider(
          max: 100,
          min: 5,
          value: gridCubit.gridSize.dx.toDouble(),
          onChanged: (value) {
            final valueInt = value.toInt();
            gridCubit.addGridSize(GridSize(dx: valueInt, dy: valueInt));
          },
        ),
        const Text(
          'Grid Size',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
