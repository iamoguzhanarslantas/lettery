import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lettery/src/home/home.dart'
    show AnswerStage, AppColors, homeControllerProvider, keysMap;

class KeyboardRow extends ConsumerWidget {
  const KeyboardRow({
    super.key,
    required this.min,
    required this.max,
  });

  final int min, max;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeProviderNotifierController =
        ref.read(homeControllerProvider.notifier);
    final homeProviderController = ref.watch(homeControllerProvider);
    final size = MediaQuery.of(context).size;
    int index = 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: keysMap.entries.map(
        (e) {
          index++;
          if (index >= min && index <= max) {
            Color color = Theme.of(context).primaryColorLight;
            if (homeProviderController.tilesEntered.isNotEmpty) {
              if (e.value == AnswerStage.correct) {
                color = AppColors.correctGreen;
              } else if (e.value == AnswerStage.contains) {
                color = AppColors.containsYellow;
              } else if (e.value == AnswerStage.incorrect) {
                color = Theme.of(context).primaryColorDark;
              }
            }
            return Padding(
              padding: EdgeInsets.all(size.width / 100),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox(
                  width: e.key == 'ENTER' || e.key == 'BACK'
                      ? size.width / 8
                      : size.width / 13,
                  height: size.height / 11,
                  child: Material(
                    color: color,
                    child: InkWell(
                      onTap: () {
                        homeProviderNotifierController.setKeyTapped(
                          value: e.key,
                        );
                      },
                      child: Center(
                        child: Text(e.key),
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ).toList(),
    );
  }
}
