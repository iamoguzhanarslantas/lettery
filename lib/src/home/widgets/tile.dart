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
  Color _backgroundColor = Colors.transparent,
      _borderColor = Colors.transparent;
  late AnswerStage _answerStage;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _borderColor = Theme.of(context).primaryColorLight;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeProviderController = ref.watch(homeControllerProvider);
    String text = '';
    Color fontColor = Colors.white;
    if (widget.index < homeProviderController.tilesEntered.length) {
      text = homeProviderController.tilesEntered[widget.index].letter;
      _answerStage =
          homeProviderController.tilesEntered[widget.index].answerStage;
      if (_answerStage == AnswerStage.correct) {
        _borderColor = Colors.transparent;
        _backgroundColor = AppColors.correctGreen;
      } else if (_answerStage == AnswerStage.contains) {
        _borderColor = Colors.transparent;
        _backgroundColor = AppColors.containsYellow;
      } else if (_answerStage == AnswerStage.incorrect) {
        _borderColor = Colors.transparent;
        _backgroundColor = Theme.of(context).primaryColorDark;
      } else {
        fontColor =
            Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black;
        _backgroundColor = Colors.transparent;
      }
      return Container(
        decoration: BoxDecoration(
          color: _backgroundColor,
          border: Border.all(
            color: _borderColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              text,
              style: const TextStyle().copyWith(
                color: fontColor,
              ),
            ),
          ),
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          color: _backgroundColor,
          border: Border.all(
            color: _borderColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      );
    }
  }
}
