import 'package:flutter/material.dart';
import '../mobile screens/about_us_mobile_main_screen.dart';
import '../web screens/screens/about_us_web_info_screen.dart';

class ResponsiveAboutUsInfoScreen extends StatelessWidget {
  const ResponsiveAboutUsInfoScreen({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    if (width >= 700) {
      return AboutUsWebInfoScreen(index: index,);
    } else {
      return AboutUsMobileScreen(index: index,);
    }
  }
}
