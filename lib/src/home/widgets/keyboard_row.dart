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
    final size = MediaQuery.of(context).size;
    int index = 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: keysMap.entries.map(
        (e) {
          index++;
          if (index >= min && index <= max) {
            return Padding(
              padding: EdgeInsets.all(size.width / 100),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.red,
                  width: e.key == 'ENTER' || e.key == 'BACK'
                      ? size.width / 8
                      : size.width / 13,
                  height: size.height / 11,
                  child: Material(
                    child: InkWell(
                      onTap: () {},
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
