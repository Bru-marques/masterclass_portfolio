import 'package:flutter/material.dart';
import 'package:portfolio/pages/home/home.dart';
import 'package:portfolio/theme/custom_theme.dart';
import 'package:portfolio/utils/dark_theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder:
          (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
        return ChangeNotifierProvider<DarkThemeProvider>.value(
          value: DarkThemeProvider(snapshot.data!),
          child: _MyApp(),
        );
      },
    );
  }
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dark Theme Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system, //follow system
      darkTheme: setDarkTheme,
      theme: Provider.of<DarkThemeProvider>(context).isDarkMode
          ? setDarkTheme
          : setLightTheme,
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}
