import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lettery/src/home/home.dart' show TileModel;

part 'home_controller_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class HomeControllerState with _$HomeControllerState {
  const factory HomeControllerState({
    required int currentTile,
    required int currentRow,
    required List<TileModel> tilesEntered,
  }) = _HomeControllerState;
}
