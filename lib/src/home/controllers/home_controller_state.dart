import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_controller_state.freezed.dart';

@freezed
class HomeControllerState with _$HomeControllerState {
  const factory HomeControllerState({
    required int currentTile,
    required int currentRow,
  }) = _HomeControllerState;
}