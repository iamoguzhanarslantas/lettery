import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lettery/src/home/controllers/home_controller_state.dart';

class HomeControllerStateNotifier extends StateNotifier<HomeControllerState> {
  HomeControllerStateNotifier()
      : super(const HomeControllerState(
          currentTile: 0,
          currentRow: 0,
        ));

  setKeyTapped({required String value}) {
    if (value == 'ENTER') {
      if (state.currentTile == 5 * (state.currentRow + 1)) {
        state = state.copyWith(currentRow: state.currentRow + 1);
        print('check word');
      }
    } else if (value == 'BACK') {
      if (state.currentTile > 5 * (state.currentRow + 1) - 5) {
        state = state.copyWith(currentTile: state.currentTile - 1);
      }
    } else {
      if (state.currentTile < 5 * (state.currentRow + 1)) {
        state = state.copyWith(currentTile: state.currentTile + 1);
      }
    }
    print('current tile ${state.currentTile} current row ${state.currentRow}');
  }
}
