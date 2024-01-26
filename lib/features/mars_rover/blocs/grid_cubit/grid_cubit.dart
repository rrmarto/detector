import 'package:detector/features/mars_rover/persistence/models/grid_size.dart';
import 'package:detector/helpers/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grid_cubit.freezed.dart';
part 'grid_state.dart';


/// Cubit to handle the grid
class GridCubit extends Cubit<GridState> {
  GridStateEnum _gridState = GridStateEnum.initial;
  Offset _startPosition = Offset.zero;
  final List<Offset> _obstacles = [];
  RoverDirection _direction = RoverDirection.north;
  GridSize _gridSize = const GridSize(dx: 5, dy: 5);
  GridCubit() : super(const GridState.initial());

  RoverDirection get direction => _direction;

  Offset get startPosition => _startPosition;

  List<Offset> get obstacles => _obstacles;

  GridSize get gridSize => _gridSize;

  GridStateEnum get gridState => _gridState;

  set gridState(GridStateEnum state) {
    _gridState = state;
    emit(GridState.state(_gridState));
  }

  void setDirection(RoverDirection direction) {
    _direction = direction;
    emit(GridState.direction(_direction));
  }

  void addStartPosition(Offset position) {
    _startPosition = position;
    emit(GridState.startPosition(_startPosition));
  }

  void addObstacle(Offset position) {
    _obstacles.add(position);
    emit(GridState.obstacles(obstacles));
  }

  void addGridSize(GridSize size) {
    _gridSize = size;
    emit(GridState.gridSize(_gridSize));
  }

  void reset() {
    _gridState = GridStateEnum.initial;
    _startPosition = Offset.zero;
    _obstacles.clear();
    _direction = RoverDirection.north;
    _gridSize = const GridSize(dx: 5, dy: 5);
    emit(const GridState.initial());
  }
}

