import 'package:flutter/material.dart';
import 'package:lettery/src/config/config.dart' show Config;
import 'package:lettery/src/home/home.dart' show AppColors;
import 'package:lettery/src/routes/routes.dart' show router;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: Config.appTitle,
      theme: ThemeData(
        primaryColorLight: AppColors.lightThemeLightShade,
        primaryColorDark: AppColors.lightThemeDarkShade,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
        ),
        useMaterial3: true,
        textTheme: const TextTheme().copyWith(
          bodyMedium: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
