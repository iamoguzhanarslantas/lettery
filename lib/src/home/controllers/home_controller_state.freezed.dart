// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_controller_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeControllerState {
  int get currentTile => throw _privateConstructorUsedError;
  int get currentRow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeControllerStateCopyWith<HomeControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeControllerStateCopyWith<$Res> {
  factory $HomeControllerStateCopyWith(
          HomeControllerState value, $Res Function(HomeControllerState) then) =
      _$HomeControllerStateCopyWithImpl<$Res, HomeControllerState>;
  @useResult
  $Res call({int currentTile, int currentRow});
}

/// @nodoc
class _$HomeControllerStateCopyWithImpl<$Res, $Val extends HomeControllerState>
    implements $HomeControllerStateCopyWith<$Res> {
  _$HomeControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTile = null,
    Object? currentRow = null,
  }) {
    return _then(_value.copyWith(
      currentTile: null == currentTile
          ? _value.currentTile
          : currentTile // ignore: cast_nullable_to_non_nullable
              as int,
      currentRow: null == currentRow
          ? _value.currentRow
          : currentRow // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeControllerStateCopyWith<$Res>
    implements $HomeControllerStateCopyWith<$Res> {
  factory _$$_HomeControllerStateCopyWith(_$_HomeControllerState value,
          $Res Function(_$_HomeControllerState) then) =
      __$$_HomeControllerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentTile, int currentRow});
}

/// @nodoc
class __$$_HomeControllerStateCopyWithImpl<$Res>
    extends _$HomeControllerStateCopyWithImpl<$Res, _$_HomeControllerState>
    implements _$$_HomeControllerStateCopyWith<$Res> {
  __$$_HomeControllerStateCopyWithImpl(_$_HomeControllerState _value,
      $Res Function(_$_HomeControllerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTile = null,
    Object? currentRow = null,
  }) {
    return _then(_$_HomeControllerState(
      currentTile: null == currentTile
          ? _value.currentTile
          : currentTile // ignore: cast_nullable_to_non_nullable
              as int,
      currentRow: null == currentRow
          ? _value.currentRow
          : currentRow // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeControllerState implements _HomeControllerState {
  const _$_HomeControllerState(
      {required this.currentTile, required this.currentRow});

  @override
  final int currentTile;
  @override
  final int currentRow;

  @override
  String toString() {
    return 'HomeControllerState(currentTile: $currentTile, currentRow: $currentRow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeControllerState &&
            (identical(other.currentTile, currentTile) ||
                other.currentTile == currentTile) &&
            (identical(other.currentRow, currentRow) ||
                other.currentRow == currentRow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTile, currentRow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeControllerStateCopyWith<_$_HomeControllerState> get copyWith =>
      __$$_HomeControllerStateCopyWithImpl<_$_HomeControllerState>(
          this, _$identity);
}

abstract class _HomeControllerState implements HomeControllerState {
  const factory _HomeControllerState(
      {required final int currentTile,
      required final int currentRow}) = _$_HomeControllerState;

  @override
  int get currentTile;
  @override
  int get currentRow;
  @override
  @JsonKey(ignore: true)
  _$$_HomeControllerStateCopyWith<_$_HomeControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}