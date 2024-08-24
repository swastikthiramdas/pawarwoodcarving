import 'package:flutter/material.dart';

import '../common widgets/texts/poppins_bold.dart';
import '../mobile screens/mobile_home_screen.dart';
import '../web screens/screens/web_main_screen.dart';

class ResponsiveHomeScreen extends StatelessWidget {
  const ResponsiveHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    if (width >= 700) {
      return WebHomeScreen();
    } else {
      return MobileHomeScreen();
    }
  }
}
