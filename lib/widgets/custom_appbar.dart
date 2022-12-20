import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/dark_theme_provider.dart';
import 'package:provider/provider.dart';

import '../theme/custom_theme.dart';

class CustomAppBar extends StatelessWidget {
  final bool hasBackButton;
  final String title;
  const CustomAppBar(
      {Key? key, this.hasBackButton = false, this.title = 'Activities'})
      : super(key: key);
  void changeTheme(bool value, BuildContext context) {
    Provider.of<DarkThemeProvider>(context, listen: false).setDarkMode(value);
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<DarkThemeProvider>(context).isDarkMode;
    return AppBar(
      leadingWidth: 60,
      leading: hasBackButton
          ? IconButton(
              icon: const Icon(
                color: Colors.deepOrangeAccent,
                Icons.arrow_back_ios_new_rounded,
                size: 48,
              ),
              onPressed: () => Navigator.pop(context),
            )
          : const Center(
              child: FaIcon(
                FontAwesomeIcons.slideshare,
                color: Colors.deepOrangeAccent,
                size: 32,
              ),
            ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: IconButton(
            onPressed: () {
              changeTheme(
                  Provider.of<DarkThemeProvider>(context, listen: false)
                          .isDarkMode
                      ? false
                      : true,
                  context);
            },
            icon: isDarkMode
                ? Icon(Icons.brightness_3,
                    size: 36, color: setLightTheme.highlightColor)
                : Icon(Icons.sunny,
                    size: 35, color: setDarkTheme.highlightColor),
          ),
        )
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: isDarkMode
                ? setDarkTheme.textTheme.headline1
                : setLightTheme.textTheme.headline1,
          ),
          Text('Bruna Marques',
              style: isDarkMode
                  ? setDarkTheme.textTheme.bodyText2
                  : setLightTheme.textTheme.bodyText2),
        ],
      ),
    );
  }
}
