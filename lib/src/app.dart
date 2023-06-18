import 'package:flutter/material.dart';
import 'package:lettery/src/common/common.dart' show AppTheme;
import 'package:lettery/src/config/config.dart' show Config;
import 'package:lettery/src/routes/routes.dart' show router;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: Config.appTitle,
      theme: AppTheme.darkTheme,
    );
  }
}
