// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grid_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GridState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GridStateEnum state) state,
    required TResult Function(RoverDirection direction) direction,
    required TResult Function(Offset position) startPosition,
    required TResult Function(List<Offset> obstacles) obstacles,
    required TResult Function(GridSize size) gridSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GridStateEnum state)? state,
    TResult? Function(RoverDirection direction)? direction,
    TResult? Function(Offset position)? startPosition,
    TResult? Function(List<Offset> obstacles)? obstacles,
    TResult? Function(GridSize size)? gridSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GridStateEnum state)? state,
    TResult Function(RoverDirection direction)? direction,
    TResult Function(Offset position)? startPosition,
    TResult Function(List<Offset> obstacles)? obstacles,
    TResult Function(GridSize size)? gridSize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_State value) state,
    required TResult Function(_Direction value) direction,
    required TResult Function(_StartPosition value) startPosition,
    required TResult Function(_Obstacles value) obstacles,
    required TResult Function(_GridSize value) gridSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_State value)? state,
    TResult? Function(_Direction value)? direction,
    TResult? Function(_StartPosition value)? startPosition,
    TResult? Function(_Obstacles value)? obstacles,
    TResult? Function(_GridSize value)? gridSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_State value)? state,
    TResult Function(_Direction value)? direction,
    TResult Function(_StartPosition value)? startPosition,
    TResult Function(_Obstacles value)? obstacles,
    TResult Function(_GridSize value)? gridSize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GridStateCopyWith<$Res> {
  factory $GridStateCopyWith(GridState value, $Res Function(GridState) then) =
      _$GridStateCopyWithImpl<$Res, GridState>;
}

/// @nodoc
class _$GridStateCopyWithImpl<$Res, $Val extends GridState>
    implements $GridStateCopyWith<$Res> {
  _$GridStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GridStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GridState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GridStateEnum state) state,
    required TResult Function(RoverDirection direction) direction,
    required TResult Function(Offset position) startPosition,
    required TResult Function(List<Offset> obstacles) obstacles,
    required TResult Function(GridSize size) gridSize,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GridStateEnum state)? state,
    TResult? Function(RoverDirection direction)? direction,
    TResult? Function(Offset position)? startPosition,
    TResult? Function(List<Offset> obstacles)? obstacles,
    TResult? Function(GridSize size)? gridSize,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GridStateEnum state)? state,
    TResult Function(RoverDirection direction)? direction,
    TResult Function(Offset position)? startPosition,
    TResult Function(List<Offset> obstacles)? obstacles,
    TResult Function(GridSize size)? gridSize,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_State value) state,
    required TResult Function(_Direction value) direction,
    required TResult Function(_StartPosition value) startPosition,
    required TResult Function(_Obstacles value) obstacles,
    required TResult Function(_GridSize value) gridSize,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_State value)? state,
    TResult? Function(_Direction value)? direction,
    TResult? Function(_StartPosition value)? startPosition,
    TResult? Function(_Obstacles value)? obstacles,
    TResult? Function(_GridSize value)? gridSize,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_State value)? state,
    TResult Function(_Direction value)? direction,
    TResult Function(_StartPosition value)? startPosition,
    TResult Function(_Obstacles value)? obstacles,
    TResult Function(_GridSize value)? gridSize,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GridState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GridStateEnum state});
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$GridStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$StateImpl(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as GridStateEnum,
    ));
  }
}

/// @nodoc

class _$StateImpl implements _State {
  const _$StateImpl(this.state);

  @override
  final GridStateEnum state;

  @override
  String toString() {
    return 'GridState.state(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GridStateEnum state) state,
    required TResult Function(RoverDirection direction) direction,
    required TResult Function(Offset position) startPosition,
    required TResult Function(List<Offset> obstacles) obstacles,
    required TResult Function(GridSize size) gridSize,
  }) {
    return state(this.state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GridStateEnum state)? state,
    TResult? Function(RoverDirection direction)? direction,
    TResult? Function(Offset position)? startPosition,
    TResult? Function(List<Offset> obstacles)? obstacles,
    TResult? Function(GridSize size)? gridSize,
  }) {
    return state?.call(this.state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GridStateEnum state)? state,
    TResult Function(RoverDirection direction)? direction,
    TResult Function(Offset position)? startPosition,
    TResult Function(List<Offset> obstacles)? obstacles,
    TResult Function(GridSize size)? gridSize,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this.state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_State value) state,
    required TResult Function(_Direction value) direction,
    required TResult Function(_StartPosition value) startPosition,
    required TResult Function(_Obstacles value) obstacles,
    required TResult Function(_GridSize value) gridSize,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_State value)? state,
    TResult? Function(_Direction value)? direction,
    TResult? Function(_StartPosition value)? startPosition,
    TResult? Function(_Obstacles value)? obstacles,
    TResult? Function(_GridSize value)? gridSize,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_State value)? state,
    TResult Function(_Direction value)? direction,
    TResult Function(_StartPosition value)? startPosition,
    TResult Function(_Obstacles value)? obstacles,
    TResult Function(_GridSize value)? gridSize,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _State implements GridState {
  const factory _State(final GridStateEnum state) = _$StateImpl;

  GridStateEnum get state;
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DirectionImplCopyWith<$Res> {
  factory _$$DirectionImplCopyWith(
          _$DirectionImpl value, $Res Function(_$DirectionImpl) then) =
      __$$DirectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RoverDirection direction});
}

/// @nodoc
class __$$DirectionImplCopyWithImpl<$Res>
    extends _$GridStateCopyWithImpl<$Res, _$DirectionImpl>
    implements _$$DirectionImplCopyWith<$Res> {
  __$$DirectionImplCopyWithImpl(
      _$DirectionImpl _value, $Res Function(_$DirectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
  }) {
    return _then(_$DirectionImpl(
      null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as RoverDirection,
    ));
  }
}

/// @nodoc

class _$DirectionImpl implements _Direction {
  const _$DirectionImpl(this.direction);

  @override
  final RoverDirection direction;

  @override
  String toString() {
    return 'GridState.direction(direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectionImpl &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, direction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectionImplCopyWith<_$DirectionImpl> get copyWith =>
      __$$DirectionImplCopyWithImpl<_$DirectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GridStateEnum state) state,
    required TResult Function(RoverDirection direction) direction,
    required TResult Function(Offset position) startPosition,
    required TResult Function(List<Offset> obstacles) obstacles,
    required TResult Function(GridSize size) gridSize,
  }) {
    return direction(this.direction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GridStateEnum state)? state,
    TResult? Function(RoverDirection direction)? direction,
    TResult? Function(Offset position)? startPosition,
    TResult? Function(List<Offset> obstacles)? obstacles,
    TResult? Function(GridSize size)? gridSize,
  }) {
    return direction?.call(this.direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GridStateEnum state)? state,
    TResult Function(RoverDirection direction)? direction,
    TResult Function(Offset position)? startPosition,
    TResult Function(List<Offset> obstacles)? obstacles,
    TResult Function(GridSize size)? gridSize,
    required TResult orElse(),
  }) {
    if (direction != null) {
      return direction(this.direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_State value) state,
    required TResult Function(_Direction value) direction,
    required TResult Function(_StartPosition value) startPosition,
    required TResult Function(_Obstacles value) obstacles,
    required TResult Function(_GridSize value) gridSize,
  }) {
    return direction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_State value)? state,
    TResult? Function(_Direction value)? direction,
    TResult? Function(_StartPosition value)? startPosition,
    TResult? Function(_Obstacles value)? obstacles,
    TResult? Function(_GridSize value)? gridSize,
  }) {
    return direction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_State value)? state,
    TResult Function(_Direction value)? direction,
    TResult Function(_StartPosition value)? startPosition,
    TResult Function(_Obstacles value)? obstacles,
    TResult Function(_GridSize value)? gridSize,
    required TResult orElse(),
  }) {
    if (direction != null) {
      return direction(this);
    }
    return orElse();
  }
}

abstract class _Direction implements GridState {
  const factory _Direction(final RoverDirection direction) = _$DirectionImpl;

  RoverDirection get direction;
  @JsonKey(ignore: true)
  _$$DirectionImplCopyWith<_$DirectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartPositionImplCopyWith<$Res> {
  factory _$$StartPositionImplCopyWith(
          _$StartPositionImpl value, $Res Function(_$StartPositionImpl) then) =
      __$$StartPositionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Offset position});
}

/// @nodoc
class __$$StartPositionImplCopyWithImpl<$Res>
    extends _$GridStateCopyWithImpl<$Res, _$StartPositionImpl>
    implements _$$StartPositionImplCopyWith<$Res> {
  __$$StartPositionImplCopyWithImpl(
      _$StartPositionImpl _value, $Res Function(_$StartPositionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$StartPositionImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$StartPositionImpl implements _StartPosition {
  const _$StartPositionImpl(this.position);

  @override
  final Offset position;

  @override
  String toString() {
    return 'GridState.startPosition(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartPositionImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartPositionImplCopyWith<_$StartPositionImpl> get copyWith =>
      __$$StartPositionImplCopyWithImpl<_$StartPositionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GridStateEnum state) state,
    required TResult Function(RoverDirection direction) direction,
    required TResult Function(Offset position) startPosition,
    required TResult Function(List<Offset> obstacles) obstacles,
    required TResult Function(GridSize size) gridSize,
  }) {
    return startPosition(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GridStateEnum state)? state,
    TResult? Function(RoverDirection direction)? direction,
    TResult? Function(Offset position)? startPosition,
    TResult? Function(List<Offset> obstacles)? obstacles,
    TResult? Function(GridSize size)? gridSize,
  }) {
    return startPosition?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GridStateEnum state)? state,
    TResult Function(RoverDirection direction)? direction,
    TResult Function(Offset position)? startPosition,
    TResult Function(List<Offset> obstacles)? obstacles,
    TResult Function(GridSize size)? gridSize,
    required TResult orElse(),
  }) {
    if (startPosition != null) {
      return startPosition(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_State value) state,
    required TResult Function(_Direction value) direction,
    required TResult Function(_StartPosition value) startPosition,
    required TResult Function(_Obstacles value) obstacles,
    required TResult Function(_GridSize value) gridSize,
  }) {
    return startPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_State value)? state,
    TResult? Function(_Direction value)? direction,
    TResult? Function(_StartPosition value)? startPosition,
    TResult? Function(_Obstacles value)? obstacles,
    TResult? Function(_GridSize value)? gridSize,
  }) {
    return startPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_State value)? state,
    TResult Function(_Direction value)? direction,
    TResult Function(_StartPosition value)? startPosition,
    TResult Function(_Obstacles value)? obstacles,
    TResult Function(_GridSize value)? gridSize,
    required TResult orElse(),
  }) {
    if (startPosition != null) {
      return startPosition(this);
    }
    return orElse();
  }
}

abstract class _StartPosition implements GridState {
  const factory _StartPosition(final Offset position) = _$StartPositionImpl;

  Offset get position;
  @JsonKey(ignore: true)
  _$$StartPositionImplCopyWith<_$StartPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ObstaclesImplCopyWith<$Res> {
  factory _$$ObstaclesImplCopyWith(
          _$ObstaclesImpl value, $Res Function(_$ObstaclesImpl) then) =
      __$$ObstaclesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Offset> obstacles});
}

/// @nodoc
class __$$ObstaclesImplCopyWithImpl<$Res>
    extends _$GridStateCopyWithImpl<$Res, _$ObstaclesImpl>
    implements _$$ObstaclesImplCopyWith<$Res> {
  __$$ObstaclesImplCopyWithImpl(
      _$ObstaclesImpl _value, $Res Function(_$ObstaclesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? obstacles = null,
  }) {
    return _then(_$ObstaclesImpl(
      null == obstacles
          ? _value._obstacles
          : obstacles // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
    ));
  }
}

/// @nodoc

class _$ObstaclesImpl implements _Obstacles {
  const _$ObstaclesImpl(final List<Offset> obstacles) : _obstacles = obstacles;

  final List<Offset> _obstacles;
  @override
  List<Offset> get obstacles {
    if (_obstacles is EqualUnmodifiableListView) return _obstacles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_obstacles);
  }

  @override
  String toString() {
    return 'GridState.obstacles(obstacles: $obstacles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObstaclesImpl &&
            const DeepCollectionEquality()
                .equals(other._obstacles, _obstacles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_obstacles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObstaclesImplCopyWith<_$ObstaclesImpl> get copyWith =>
      __$$ObstaclesImplCopyWithImpl<_$ObstaclesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GridStateEnum state) state,
    required TResult Function(RoverDirection direction) direction,
    required TResult Function(Offset position) startPosition,
    required TResult Function(List<Offset> obstacles) obstacles,
    required TResult Function(GridSize size) gridSize,
  }) {
    return obstacles(this.obstacles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GridStateEnum state)? state,
    TResult? Function(RoverDirection direction)? direction,
    TResult? Function(Offset position)? startPosition,
    TResult? Function(List<Offset> obstacles)? obstacles,
    TResult? Function(GridSize size)? gridSize,
  }) {
    return obstacles?.call(this.obstacles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GridStateEnum state)? state,
    TResult Function(RoverDirection direction)? direction,
    TResult Function(Offset position)? startPosition,
    TResult Function(List<Offset> obstacles)? obstacles,
    TResult Function(GridSize size)? gridSize,
    required TResult orElse(),
  }) {
    if (obstacles != null) {
      return obstacles(this.obstacles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_State value) state,
    required TResult Function(_Direction value) direction,
    required TResult Function(_StartPosition value) startPosition,
    required TResult Function(_Obstacles value) obstacles,
    required TResult Function(_GridSize value) gridSize,
  }) {
    return obstacles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_State value)? state,
    TResult? Function(_Direction value)? direction,
    TResult? Function(_StartPosition value)? startPosition,
    TResult? Function(_Obstacles value)? obstacles,
    TResult? Function(_GridSize value)? gridSize,
  }) {
    return obstacles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_State value)? state,
    TResult Function(_Direction value)? direction,
    TResult Function(_StartPosition value)? startPosition,
    TResult Function(_Obstacles value)? obstacles,
    TResult Function(_GridSize value)? gridSize,
    required TResult orElse(),
  }) {
    if (obstacles != null) {
      return obstacles(this);
    }
    return orElse();
  }
}

abstract class _Obstacles implements GridState {
  const factory _Obstacles(final List<Offset> obstacles) = _$ObstaclesImpl;

  List<Offset> get obstacles;
  @JsonKey(ignore: true)
  _$$ObstaclesImplCopyWith<_$ObstaclesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GridSizeImplCopyWith<$Res> {
  factory _$$GridSizeImplCopyWith(
          _$GridSizeImpl value, $Res Function(_$GridSizeImpl) then) =
      __$$GridSizeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GridSize size});
}

/// @nodoc
class __$$GridSizeImplCopyWithImpl<$Res>
    extends _$GridStateCopyWithImpl<$Res, _$GridSizeImpl>
    implements _$$GridSizeImplCopyWith<$Res> {
  __$$GridSizeImplCopyWithImpl(
      _$GridSizeImpl _value, $Res Function(_$GridSizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
  }) {
    return _then(_$GridSizeImpl(
      null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as GridSize,
    ));
  }
}

/// @nodoc

class _$GridSizeImpl implements _GridSize {
  const _$GridSizeImpl(this.size);

  @override
  final GridSize size;

  @override
  String toString() {
    return 'GridState.gridSize(size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GridSizeImpl &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GridSizeImplCopyWith<_$GridSizeImpl> get copyWith =>
      __$$GridSizeImplCopyWithImpl<_$GridSizeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GridStateEnum state) state,
    required TResult Function(RoverDirection direction) direction,
    required TResult Function(Offset position) startPosition,
    required TResult Function(List<Offset> obstacles) obstacles,
    required TResult Function(GridSize size) gridSize,
  }) {
    return gridSize(size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GridStateEnum state)? state,
    TResult? Function(RoverDirection direction)? direction,
    TResult? Function(Offset position)? startPosition,
    TResult? Function(List<Offset> obstacles)? obstacles,
    TResult? Function(GridSize size)? gridSize,
  }) {
    return gridSize?.call(size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GridStateEnum state)? state,
    TResult Function(RoverDirection direction)? direction,
    TResult Function(Offset position)? startPosition,
    TResult Function(List<Offset> obstacles)? obstacles,
    TResult Function(GridSize size)? gridSize,
    required TResult orElse(),
  }) {
    if (gridSize != null) {
      return gridSize(size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_State value) state,
    required TResult Function(_Direction value) direction,
    required TResult Function(_StartPosition value) startPosition,
    required TResult Function(_Obstacles value) obstacles,
    required TResult Function(_GridSize value) gridSize,
  }) {
    return gridSize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_State value)? state,
    TResult? Function(_Direction value)? direction,
    TResult? Function(_StartPosition value)? startPosition,
    TResult? Function(_Obstacles value)? obstacles,
    TResult? Function(_GridSize value)? gridSize,
  }) {
    return gridSize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_State value)? state,
    TResult Function(_Direction value)? direction,
    TResult Function(_StartPosition value)? startPosition,
    TResult Function(_Obstacles value)? obstacles,
    TResult Function(_GridSize value)? gridSize,
    required TResult orElse(),
  }) {
    if (gridSize != null) {
      return gridSize(this);
    }
    return orElse();
  }
}

abstract class _GridSize implements GridState {
  const factory _GridSize(final GridSize size) = _$GridSizeImpl;

  GridSize get size;
  @JsonKey(ignore: true)
  _$$GridSizeImplCopyWith<_$GridSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
