import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_controller_state.freezed.dart';

@freezed
class ThemeControllerState with _$ThemeControllerState {
  const factory ThemeControllerState({
    required bool isDark,
  }) = _ThemeControllerState;

  factory ThemeControllerState.init() => const ThemeControllerState(
        isDark: false,
      );
}
