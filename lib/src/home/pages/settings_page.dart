import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lettery/src/common/common.dart' show themeControllerProvider;
import 'package:lettery/src/config/config.dart' show Config;

class SettingsPage extends ConsumerStatefulWidget {
  static const routeName = '/settings';
  const SettingsPage({super.key});

  @override
  ConsumerState<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    final themeProviderNotifierController =
        ref.read(themeControllerProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          Config.appBarTitle,
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.canPop();
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
              themeProviderNotifierController.changeTheme(
                turnOn: _isSwitched,
              );
            },
          ),
        ],
      ),
    );
  }
}
