import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lettery/src/home/home.dart'
    show HomeControllerState, HomeControllerStateNotifier;

final homeControllerProvider =
    StateNotifierProvider<HomeControllerStateNotifier, HomeControllerState>(
  (ref) => HomeControllerStateNotifier(),
);
