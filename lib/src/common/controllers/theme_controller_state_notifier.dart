import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lettery/src/common/common.dart' show ThemeControllerState;

class ThemeControllerStateNotifier extends StateNotifier<ThemeControllerState> {
  ThemeControllerStateNotifier() : super(ThemeControllerState.init());
  void changeTheme({required bool turnOn}) {
    state = ThemeControllerState(isDark: turnOn);
  }
}
