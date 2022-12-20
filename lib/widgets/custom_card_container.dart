import 'package:flutter/material.dart';
import 'package:portfolio/theme/custom_theme.dart';
import 'package:portfolio/utils/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class CustomCardContainer extends StatelessWidget {
  final Widget child;
  const CustomCardContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<DarkThemeProvider>(context).isDarkMode;
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: isDarkMode
              ? setDarkTheme.highlightColor
              : setLightTheme.highlightColor),
      child: child,
    );
  }
}
