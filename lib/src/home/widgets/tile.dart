import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lettery/src/home/home.dart'
    show AnswerStage, AppColors, homeControllerProvider;

class Tile extends ConsumerStatefulWidget {
  const Tile({
    super.key,
    required this.index,
  });

  final int index;

  @override
  ConsumerState<Tile> createState() => _TileState();
}

class _TileState extends ConsumerState<Tile> {
  Color _backgroundColor = Colors.transparent;
  late AnswerStage _answerStage;
  @override
  Widget build(BuildContext context) {
    final homeProviderController = ref.watch(homeControllerProvider);
    String text = '';
    if (widget.index < homeProviderController.tilesEntered.length) {
      text = homeProviderController.tilesEntered[widget.index].letter;
      _answerStage =
          homeProviderController.tilesEntered[widget.index].answerStage;
      if (_answerStage == AnswerStage.correct) {
        _backgroundColor = AppColors.correctGreen;
      } else if (_answerStage == AnswerStage.contains) {
        _backgroundColor = AppColors.containsYellow;
      }
      return Container(
        color: _backgroundColor,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(text),
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
