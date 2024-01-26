import 'dart:async';
import 'dart:developer';

import 'package:detector/features/mars_rover/persistence/models/grid_size.dart';
import 'package:detector/helpers/enums.dart';
import 'package:detector/helpers/exceptions.dart';
import 'package:flutter/material.dart';

abstract class MarsRover {
  void executeCommand();
  void moveForward();
  void turnLeft();
  void turnRight();
  Offset getPosition();
  (bool, String) obstacleDetected(Offset position);
  Stream<Offset> get roverStream;
}

class MarsRoverImpl implements MarsRover {
  late Offset _position;
  final GridSize gridSize;
  final String command;
  final List<Offset> obstacles;
  late RoverDirection _direction;
  late final StreamController<Offset> _roverStream = StreamController();

  @override
  Stream<Offset> get roverStream => _roverStream.stream;

  MarsRoverImpl({
    required Offset position,
    required RoverDirection direction,
    required this.command,
    required this.obstacles,
    required this.gridSize,
  })  : _position = position,
        _direction = direction;

  @override
  void executeCommand() async {
    _roverStream.add(_position);
    getPosition();
    for (final command in command.split('')) {
      try {
        await Future.delayed(const Duration(seconds: 1), () {});
        execute(command);
        _roverStream.add(_position);
      } on Exception catch (e) {
        _roverStream.addError((e.toString(), _position));
        break;
      }
    }
    _roverStream.close();
  }

  @override
  void moveForward() {
    if (_direction == RoverDirection.north) {
      final foo = Offset(_position.dx, _position.dy + 1);
      _setPosition(foo);
    } else if (_direction == RoverDirection.west) {
      final foo = Offset(_position.dx - 1, _position.dy);
      _setPosition(foo);
    } else if (_direction == RoverDirection.south) {
      final foo = Offset(_position.dx, _position.dy - 1);
      _setPosition(foo);
    } else if (_direction == RoverDirection.east) {
      final foo = Offset(_position.dx + 1, _position.dy);
      _setPosition(foo);
    }
    getPosition();
  }

  void _setPosition(Offset foo) {
    final (detected, error) = obstacleDetected(foo);

    if (detected) {
      throw RoverException(message: error);
    }
    _position = foo;
  }

  @override
  void turnLeft() {
    if (_direction == RoverDirection.north) {
      _direction = RoverDirection.west;
    } else if (_direction == RoverDirection.west) {
      _direction = RoverDirection.south;
    } else if (_direction == RoverDirection.south) {
      _direction = RoverDirection.east;
    } else if (_direction == RoverDirection.east) {
      _direction = RoverDirection.north;
    }
    moveForward();
  }

  @override
  void turnRight() {
    if (_direction == RoverDirection.north) {
      _direction = RoverDirection.east;
    } else if (_direction == RoverDirection.east) {
      _direction = RoverDirection.south;
    } else if (_direction == RoverDirection.south) {
      _direction = RoverDirection.west;
    } else if (_direction == RoverDirection.west) {
      _direction = RoverDirection.north;
    }
    moveForward();
  }

  @override
  (bool, String) obstacleDetected(Offset offset) {
    if (obstacles.contains(offset)) {
      return (true, 'Obstacle detected, you can not move any further.');
    }
    if (offset.dx > gridSize.dx - 1 || offset.dy > gridSize.dy - 1) {
      return (true, "You can't get out of the grid.");
    }
    if (offset.dx < 0 || offset.dy < 0) {
      return (true, "You can't get out of the grid.");
    }
    return (false, '');
  }

  @override
  Offset getPosition() {
    log('Position: $_position');
    return _position;
  }

  void execute(String command) {
    return switch (command) {
      'F' => moveForward(),
      'L' => turnLeft(),
      'R' => turnRight(),
      _ => throw Exception('Invalid command')
    };
  }
}
