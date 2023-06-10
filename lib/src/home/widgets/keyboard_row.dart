import 'package:flutter/material.dart';
import 'package:lettery/src/common/common.dart' show keysMap;

class KeyboardRow extends StatelessWidget {
  const KeyboardRow({
    super.key,
    required this.min,
    required this.max,
  });

  final int min, max;

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Row(
      children: keysMap.entries.map(
        (e) {
          index++;
          if (index >= min && index <= max) {
            return Text(e.key);
          } else {
            return const SizedBox();
          }
        },
      ).toList(),
    );
  }
}
