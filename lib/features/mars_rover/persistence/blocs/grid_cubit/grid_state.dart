part of 'grid_cubit.dart';

@freezed
class GridState with _$GridState {
  const factory GridState.initial() = _Initial;
  const factory GridState.state(GridStateEnum state) = _State;
  const factory GridState.direction(RoverDirection direction) = _Direction;
  const factory GridState.startPosition(Offset position) = _StartPosition;
  const factory GridState.obstacles(List<Offset> obstacles) = _Obstacles;
  const factory GridState.gridSize(GridSize size) = _GridSize;
}
