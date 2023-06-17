import 'package:flutter/material.dart';
import 'package:lettery/src/home/home.dart' show Tile;

class Grid extends StatelessWidget {
  const Grid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: 60,
        vertical: 13,
      ),
      itemCount: 30,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 4,
        crossAxisCount: 5,
        crossAxisSpacing: 4,
      ),
      itemBuilder: (context, index) {
        return Tile(index: index);
      },
    );
  }
}
