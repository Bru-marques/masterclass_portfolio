import 'package:flutter/material.dart';
import 'package:portfolio/utils/dark_theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) {
            themeChangeProvider;
          },
          // builder: (_) {
          //   return themeChangeProvider; create: (BuildContext context) {  },}
        )
      ],
      // child: Consumer<DarkThemeProvider>(
      //   builder: (BuildContext context, value, Widget child) {
      //     return MaterialApp(
      //       debugShowCheckedModeBanner: false,
      //       theme: Styles.themeData(themeChangeProvider.darkTheme, context),
      //       home: MyHomePage(),
      //
      //     );
      //   },
      // ),
    );
  }
}
