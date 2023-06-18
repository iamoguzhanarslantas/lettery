import 'package:flutter/material.dart';
import 'package:lettery/src/config/config.dart' show Config;

class SettingsPage extends StatefulWidget {
  static const routeName = '/settings';
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          Config.appBarTitle,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).maybePop();
            },
            icon: const Icon(
              Icons.clear,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: _isSwitched,
            onChanged: (value) {
              setState(
                () {
                  _isSwitched = value;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
