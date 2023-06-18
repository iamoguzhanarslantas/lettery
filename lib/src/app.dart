import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lettery/src/common/common.dart'
    show AppTheme, themeControllerProvider;
import 'package:lettery/src/config/config.dart' show Config;
import 'package:lettery/src/routes/routes.dart' show router;

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeProviderController = ref.watch(themeControllerProvider);
    return MaterialApp.router(
      routerConfig: router,
      title: Config.appTitle,
      theme: themeProviderController.isDark
          ? AppTheme.darkTheme
          : AppTheme.lightTheme,
    );
  }
}
