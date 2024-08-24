import 'package:flutter/material.dart';
import '../../screens/common widgets/texts/poppins_bold.dart';
import '../../screens/responsive/responsive_product_open_screens.dart';
import '../../screens/responsive/resposive_home_screen.dart';
import 'my_routes_name.dart';

class MyRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case homepage:
        return MaterialPageRoute(builder: (context) => ResponsiveHomeScreen());
      case openProductpage:
        return MaterialPageRoute(
          builder: (context) {
            final args = ModalRoute.of(context)!.settings.arguments as OpenProductScreenArguments;
            return ResponsiveProductOpenScreen(img: args.img, text: args.text,);
          },
        );
    }

    return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(
          child: PoppinBold(
            text: 'Something went Wrong',
          ),
        ),
      ),
    );
  }
}

class OpenProductScreenArguments {
  final String img;
  final String text;

  OpenProductScreenArguments({required this.img, required this.text});
}
