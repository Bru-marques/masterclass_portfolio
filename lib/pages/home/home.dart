import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/pages/about/about.dart';
import 'package:portfolio/pages/activities/activities.dart';
import 'package:portfolio/pages/repositories/repositories.dart';
import 'package:portfolio/utils/dark_theme_provider.dart';
import 'package:portfolio/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';

import '../../theme/custom_theme.dart';

void changeTheme(bool set, BuildContext context) {
  Provider.of<DarkThemeProvider>(context, listen: false).setDarkMode(set);
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedItemIndex = 0;
  static const List<Widget> _navigationWidget = [
    Activities(),
    Repositories(),
    About()
  ];

  void _navigate(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

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
      body: _navigationWidget.elementAt(_selectedItemIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.code), label: 'Activities'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.github), label: 'Repositories'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.odnoklassniki), label: 'About'),
        ],
        backgroundColor: isDarkMode
            ? setDarkTheme.backgroundColor
            : setLightTheme.backgroundColor,
        currentIndex: _selectedItemIndex,
        onTap: _navigate,
        iconSize: 20,
        selectedFontSize: 12,
        selectedItemColor: setDarkTheme.primaryColor,
      ),
    );
  }
}
