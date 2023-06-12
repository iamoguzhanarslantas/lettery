import 'package:flutter_riverpod/flutter_riverpod.dart' show StateNotifier;
import 'package:lettery/src/home/home.dart'
    show AnswerStage, HomeControllerState, TileModel;

class HomeControllerStateNotifier extends StateNotifier<HomeControllerState> {
  HomeControllerStateNotifier()
      : super(HomeControllerState(
          currentTile: 0,
          currentRow: 0,
          tilesEntered: [],
        ));

  setKeyTapped({required String value}) {
    if (value == 'ENTER') {
      if (state.currentTile == 5 * (state.currentRow + 1)) {
        state = state.copyWith(currentRow: state.currentRow + 1);
      }
    } else if (value == 'BACK') {
      if (state.currentTile > 5 * (state.currentRow + 1) - 5) {
        state = state.copyWith(currentTile: state.currentTile - 1);
        state.tilesEntered.removeLast();
      }
    } else {
      if (state.currentTile < 5 * (state.currentRow + 1)) {
        state.tilesEntered.add(
          TileModel(
            letter: value,
            answerStage: AnswerStage.notAnswered,
          ),
        );
        state = state.copyWith(currentTile: state.currentTile + 1);
      }
    }
  }
}
