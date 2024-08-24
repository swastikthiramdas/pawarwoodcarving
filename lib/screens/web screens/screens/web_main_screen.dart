import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opscroll_web/opscroll_web.dart';
import 'package:pawarwoodcarving/screens/web%20screens/screens/seventh_phase_web_screen.dart';
import 'package:pawarwoodcarving/screens/web%20screens/screens/sixth_phase_web_screen.dart';
import 'package:pawarwoodcarving/screens/web%20screens/screens/third_phase_web_screen.dart';
import '../../../Backend/scroll_offset.dart';
import '../../../animations/transformers.dart';
import '../../../utils/colors.dart';
import 'fifth_phase_web_screen.dart';
import 'fourth_section_web_screen.dart';
import 'home_screen_web_experience.dart';
import 'home_suggestions.dart';

class WebHomeScreen extends StatefulWidget {
  WebHomeScreen({super.key});

  @override
  State<WebHomeScreen> createState() => _WebHomeScreenState();
}

class _WebHomeScreenState extends State<WebHomeScreen> {
  late ScrollController controller;

  @override
  void initState() {
    controller = ScrollController();
    super.initState();

    controller.addListener(() {
      context.read<DisplayOffset>().changeDisplayOffset(
          (MediaQuery.of(context).size.height + controller.position.pixels)
              .toInt());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            HomeSuggestionWidget(),
            SizedBox(height: 100),
            HomeScreenWebExperience(),
            SizedBox(height: 40),
            ThirdPhaseWebScreen(),
            SizedBox(height: 100),
            FifthPhaseWebScreen(),
            SizedBox(height: 100),
            FourthPhaseWebScreen(),
            SizedBox(height: 100),
            SixthPhaseWebScreen(),
            SizedBox(height: 100),
            SeventhPhaseWebScreen(),
          ],
        ),
      ),
    );
  }
}
