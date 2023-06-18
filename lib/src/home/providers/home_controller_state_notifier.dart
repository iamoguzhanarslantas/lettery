import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lettery/src/home/home.dart'
    show AnswerStage, HomeControllerState, TileModel, keysMap;

class HomeControllerStateNotifier extends StateNotifier<HomeControllerState> {
  HomeControllerStateNotifier() : super(HomeControllerState.init());

  setCorrectWord({required String word}) {
    state = state.copyWith(correctWord: word);
  }

  setKeyTapped({required String value}) {
    if (value == 'ENTER') {
      if (state.currentTile == 5 * (state.currentRow + 1)) {
        checkWord();
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

  checkWord() {
    List<String> guessed = [], remainingCorrect = [];
    String guessedWord = '';

    for (int i = state.currentRow * 5; i < (state.currentRow * 5) + 5; i++) {
      guessed.add(state.tilesEntered[i].letter);
    }
    guessedWord = guessed.join();
    remainingCorrect = state.correctWord.characters.toList();

    if (guessedWord == state.correctWord) {
      for (int i = state.currentRow * 5; i < (state.currentRow * 5) + 5; i++) {
        state.tilesEntered[i].answerStage = AnswerStage.correct;
        keysMap.update(
          state.tilesEntered[i].letter,
          (value) => AnswerStage.correct,
        );
      }
    } else {
      for (int i = 0; i < 5; i++) {
        if (guessedWord[i] == state.correctWord[i]) {
          remainingCorrect.remove(guessedWord[i]);
          state.tilesEntered[i + (state.currentRow * 5)].answerStage =
              AnswerStage.correct;
          keysMap.update(
            guessedWord[i],
            (value) => AnswerStage.correct,
          );
        }
      }
      for (int i = 0; i < remainingCorrect.length; i++) {
        for (int j = 0; j < 5; j++) {
          if (remainingCorrect[i] ==
              state.tilesEntered[j + (state.currentRow * 5)].letter) {
            if (state.tilesEntered[j + (state.currentRow * 5)].answerStage !=
                AnswerStage.correct) {
              state.tilesEntered[j + (state.currentRow * 5)].answerStage =
                  AnswerStage.contains;
            }
            final resultKey = keysMap.entries.where((element) =>
                element.key ==
                state.tilesEntered[j + (state.currentRow * 5)].letter);

            if (resultKey.single.value != AnswerStage.correct) {
              keysMap.update(
                resultKey.single.key,
                (value) => AnswerStage.contains,
              );
            }
          }
        }
      }
    }

    for (int i = state.currentRow * 5; i < (state.currentRow * 5) + 5; i++) {
      if (state.tilesEntered[i].answerStage == AnswerStage.notAnswered) {
        state.tilesEntered[i].answerStage = AnswerStage.incorrect;
        final results = keysMap.entries
            .where((element) => element.key == state.tilesEntered[i].letter);
        if (results.single.value == AnswerStage.notAnswered) {
          keysMap.update(
            state.tilesEntered[i].letter,
            (value) => AnswerStage.incorrect,
          );
        }
      }
    }
    state = state.copyWith(currentRow: state.currentRow + 1);
  }
}
