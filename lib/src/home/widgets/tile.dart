import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    show ConsumerWidget, WidgetRef;
import 'package:lettery/src/home/home.dart' show homeControllerProvider;

class Tile extends ConsumerWidget {
  const Tile({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeProviderController = ref.watch(homeControllerProvider);
    String text = '';
    if (index < homeProviderController.tilesEntered.length) {
      text = homeProviderController.tilesEntered[index].letter;
      return Center(
        child: Text(text),
      );
    } else {
      return const SizedBox();
    }
  }
}
