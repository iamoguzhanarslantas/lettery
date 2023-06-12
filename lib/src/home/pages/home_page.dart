import 'dart:math' show Random;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    show ConsumerState, ConsumerStatefulWidget;
import 'package:lettery/src/config/config.dart' show Config;
import 'package:lettery/src/home/home.dart'
    show Grid, KeyboardRow, homeControllerProvider, words;

class HomePage extends ConsumerStatefulWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late String _word;

  @override
  void initState() {
    final r = Random().nextInt(words.length);
    _word = words[r];
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final homeProviderController = ref.read(homeControllerProvider.notifier);
      homeProviderController.setCorrectWord(word: _word);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          Config.appBarTitle,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.yellow,
              child: const Grid(),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.green,
              child: const Column(
                children: [
                  KeyboardRow(
                    min: 1,
                    max: 10,
                  ),
                  KeyboardRow(
                    min: 11,
                    max: 19,
                  ),
                  KeyboardRow(
                    min: 20,
                    max: 29,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
