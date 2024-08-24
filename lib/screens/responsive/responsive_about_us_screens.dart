import 'package:flutter/material.dart';

import '../mobile screens/about_us_mobile_main_screen.dart';
import '../web screens/screens/about_us_web_main_screen.dart';


class ResponsiveAboutUsMainScreen extends StatelessWidget {
  const ResponsiveAboutUsMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    if (width >= 700) {
      return AboutUsWebMainScreen();
    } else {
      return AboutUsMobileScreen();
    }
  }
}
