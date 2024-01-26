part of 'mars_rover_cubit.dart';

@freezed
class MarsRoverState with _$MarsRoverState {
  const factory MarsRoverState.initial() = _Initial;
  const factory MarsRoverState.finish() = _Finish;
  const factory MarsRoverState.error(
      {required String message, required Offset position}) = _Error;
  const factory MarsRoverState.position({required Offset position}) = _Position;
}
