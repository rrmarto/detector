import 'dart:ui';

import 'package:detector/features/mars_rover/persistence/models/grid_size.dart';
import 'package:detector/features/mars_rover/persistence/repositories/mars_rover.dart';
import 'package:detector/helpers/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mars_rover_cubit.freezed.dart';
part 'mars_rover_state.dart';


/// Cubit to handle the mars rover
class MarsRoverCubit extends Cubit<MarsRoverState> {
  late MarsRover marsRover;
  MarsRoverCubit() : super(const MarsRoverState.initial());

  void executeCommand(
      {required Offset position,
      required List<Offset> obstacles,
      required GridSize gridSize,
      required RoverDirection direction,
      required String instructions}) async {
    marsRover = MarsRoverImpl(
      position: position,
      direction: direction,
      command: instructions,
      obstacles: obstacles,
      gridSize: gridSize,
    );
    marsRover.executeCommand();
    listenMarsRoverPosition();
  }

  void listenMarsRoverPosition() {
    marsRover.roverStream.listen(
      (event) async {
        emit(MarsRoverState.position(position: event));
      },
      onDone: () {
        emit(const MarsRoverState.finish());
      },
      cancelOnError: true,
      onError: (e) {
        final (message, position) = e;
        emit(MarsRoverState.error(message: message, position: position));
      },
    );
  }

  void reset() {
    emit(const MarsRoverState.initial());
  }
}
