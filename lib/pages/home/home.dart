import 'package:flutter/material.dart';
import 'package:portfolio/utils/dark_theme_provider.dart';
import 'package:portfolio/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';

import '../../theme/custom_theme.dart';

void changeTheme(bool set, BuildContext context) {
  Provider.of<DarkThemeProvider>(context, listen: false).setDarkMode(set);
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<DarkThemeProvider>(context).isDarkMode;
    return Scaffold(
      backgroundColor: isDarkMode
          ? setDarkTheme.backgroundColor
          : setLightTheme.backgroundColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(58),
        child: CustomAppBar(),
      ),
      // AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeTheme(
              Provider.of<DarkThemeProvider>(context, listen: false).isDarkMode
                  ? false
                  : true,
              context);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
