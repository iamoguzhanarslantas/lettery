import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lettery/src/home/home.dart' show TileModel;

part 'home_controller_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class HomeControllerState with _$HomeControllerState {
  factory HomeControllerState({
    required String correctWord,
    required int currentTile,
    required int currentRow,
    required List<TileModel> tilesEntered,
  }) = _HomeControllerState;

  factory HomeControllerState.init() => HomeControllerState(
        correctWord: '',
        currentTile: 0,
        currentRow: 0,
        tilesEntered: [],
      );
}
