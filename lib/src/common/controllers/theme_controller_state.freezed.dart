// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_controller_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeControllerState {
  bool get isDark => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeControllerStateCopyWith<ThemeControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeControllerStateCopyWith<$Res> {
  factory $ThemeControllerStateCopyWith(ThemeControllerState value,
          $Res Function(ThemeControllerState) then) =
      _$ThemeControllerStateCopyWithImpl<$Res, ThemeControllerState>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class _$ThemeControllerStateCopyWithImpl<$Res,
        $Val extends ThemeControllerState>
    implements $ThemeControllerStateCopyWith<$Res> {
  _$ThemeControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_value.copyWith(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThemeControllerStateCopyWith<$Res>
    implements $ThemeControllerStateCopyWith<$Res> {
  factory _$$_ThemeControllerStateCopyWith(_$_ThemeControllerState value,
          $Res Function(_$_ThemeControllerState) then) =
      __$$_ThemeControllerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$_ThemeControllerStateCopyWithImpl<$Res>
    extends _$ThemeControllerStateCopyWithImpl<$Res, _$_ThemeControllerState>
    implements _$$_ThemeControllerStateCopyWith<$Res> {
  __$$_ThemeControllerStateCopyWithImpl(_$_ThemeControllerState _value,
      $Res Function(_$_ThemeControllerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$_ThemeControllerState(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ThemeControllerState implements _ThemeControllerState {
  const _$_ThemeControllerState({required this.isDark});

  @override
  final bool isDark;

  @override
  String toString() {
    return 'ThemeControllerState(isDark: $isDark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeControllerState &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThemeControllerStateCopyWith<_$_ThemeControllerState> get copyWith =>
      __$$_ThemeControllerStateCopyWithImpl<_$_ThemeControllerState>(
          this, _$identity);
}

abstract class _ThemeControllerState implements ThemeControllerState {
  const factory _ThemeControllerState({required final bool isDark}) =
      _$_ThemeControllerState;

  @override
  bool get isDark;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeControllerStateCopyWith<_$_ThemeControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}
