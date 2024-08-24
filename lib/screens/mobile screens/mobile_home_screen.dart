import 'package:feather_icons_svg/feather_icons_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Backend/scroll_offset.dart';
import '../../utils/colors.dart';
import 'mobile_home_suggestion.dart';
import 'mobile_phase_fifth_screen.dart';
import 'mobile_phase_four_screen.dart';
import 'mobile_phase_seventh_screen.dart';
import 'mobile_phase_sixth_screen.dart';
import 'mobile_phase_three_screen.dart';
import 'mobile_screen_expirience.dart';

class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({super.key});

  @override
  State<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {

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
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 80,
        title: SizedBox(
          width: 120,
          child: Image.asset('assets/images/logo.png' , fit: BoxFit.fitWidth,),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: FeatherIcon(FeatherIcons.menu , color: Colors.white,size: 25,),
          ),
        ],
      ),
      backgroundColor: background,
      body: SingleChildScrollView(
        controller: controller,
        child: const Column(
          children: [
            MobileHomeSuggestion(),
            SizedBox(height: 40),
            MobileScreenExpirience(),
            SizedBox(height: 40),
            MobilePhaseThreeScreen(),
            SizedBox(height: 40),
            MobilePhaseFifthScreen(),
            SizedBox(height: 40),
            MobilePhaseFourScreen(),
            SizedBox(height: 40),
            MobilePhaseSixthScreen(),
            SizedBox(height: 40),
            MobilePhaseSeventhScreen(),
          ],
        ),
      ),
    );
  }
}
