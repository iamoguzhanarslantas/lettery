import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lettery/src/common/common.dart'
    show ThemeControllerState, ThemeControllerStateNotifier;

final themeControllerProvider =
    StateNotifierProvider<ThemeControllerStateNotifier, ThemeControllerState>(
  (ref) => ThemeControllerStateNotifier(),
);
