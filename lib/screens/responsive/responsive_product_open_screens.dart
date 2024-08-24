import 'package:flutter/material.dart';

import '../mobile screens/product_open_mobile_screen.dart';
import '../web screens/screens/product_open_web_screen.dart';


class ResponsiveProductOpenScreen extends StatelessWidget {
  const ResponsiveProductOpenScreen({super.key, this.img, this.text});
  final String? img;
  final String? text;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    if (width >= 700) {
      return ProductOpenWebScreen(img: img, text: text,);
    } else {
      return ProductOpenMobileScreen();
    }
  }
}