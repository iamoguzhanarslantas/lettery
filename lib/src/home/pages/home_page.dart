import 'package:flutter/material.dart';
import 'package:lettery/src/config.dart' show Config;
import 'package:lettery/src/home/home.dart' show Grid, KeyboardRow;

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
