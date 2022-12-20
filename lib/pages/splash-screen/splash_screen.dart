import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/pages/home/home.dart';
import 'package:portfolio/theme/custom_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 2000),
      () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const MyHomePage()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: setDarkTheme.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(FontAwesomeIcons.slideshare,
              color: setDarkTheme.primaryColor, size: 72),
          const SizedBox(height: 20),
          Text(
            'Bruna Marques',
            style: setDarkTheme.textTheme.headline1,
          ),
          const SizedBox(height: 8),
          Text(
            'Flutterando Masterclass Portfolio',
            style: setDarkTheme.textTheme.headline2,
          ),
        ],
      ),
    );
  }
}
