import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Backend/scroll_offset.dart';
import '../../../Backend/sizes.dart';
import '../../../animations/slide_transition_widget.dart';
import '../../../animations/text_reveal.dart';
import '../../../animations/text_reveal_rigth_to_left.dart';
import '../../../utils/colors.dart';
import '../../common widgets/texts/poppins_regular.dart';
import '../../common widgets/texts/poppins_semibold.dart';
import '../web widgets/hower_change_widget.dart';

class HomeScreenWebExperience extends StatefulWidget {
  const HomeScreenWebExperience({super.key});

  @override
  State<HomeScreenWebExperience> createState() =>
      _HomeScreenWebExperienceState();
}

class _HomeScreenWebExperienceState extends State<HomeScreenWebExperience>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> textRevealAnimation;

  // late Animation<double> textOpacityAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
      reverseDuration: const Duration(milliseconds: 375),
    );

    textRevealAnimation =
        Tween<double>(begin: 200.0, end: 0.0).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(0.0, 0.4, curve: Curves.easeInCirc),
    ));

    /*textOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.3, curve: Curves.easeOut)));*/

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double heigth = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return BlocBuilder<DisplayOffset, Scrolloffset>(builder: (context, state) {
      print('refreshed...${state.scrollOffsetValue}');
      if (state.scrollOffsetValue > 1089) {
        controller.forward();
      } else {
        controller.reverse();
      }
      return SizedBox(
        height: heigth / heigth300,
        width: width,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / width140),
              child: SizedBox(
                height: heigth / heigth200,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextReveal(
                              maxHeigt: heigth / heigth60,
                              controller: controller,
                              child: PoppinSemiBold(
                                text: 'Invaluable Experience',
                                fontsize: width / width30,
                              ),
                            ),
                            SizedBox(height: heigth / heigth10),
                            TextReveal(
                              maxHeigt: heigth / heigth60,
                              controller: controller,
                              child: SizedBox(
                                width: width / width600,
                                child: const PoppinsRegular(
                                  text:
                                      'For over 18 years, my journey in the wood carving industry has been a testament to the art of precision and creativity. With each stroke of the chisel, I have honed my skills, bringing forth a symphony of form and function.',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextReveal(
                              maxHeigt: heigth / heigth120,
                              controller: controller,
                              child: HowerChangeWidget(
                                fontsize: width / width100,
                                text: '19+',
                              ),
                            ),
                            TextReveal(
                              maxHeigt: heigth / heigth20,
                              controller: controller,
                              child: PoppinSemiBold(
                                  text: 'years of experience' , fontsize: width / width15,),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextReveal(
                  maxHeigt: 2,
                  controller: controller,
                  textRevealAnimation: textRevealAnimation,
                  child: Container(
                    width: width / width400,
                    height: 1,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            /*Row(
              children: [
                Container(
                  height: 1,
                  color: background,
                ),
                TextRevealRightToLeft(
                  maxWidth: 200,
                  controller: controller,
                  child: Container(
                    height: 1,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),*/
            /*Expanded(
                flex: 3,
                child: Image.network(
                  'https://images.unsplash.com/photo-1598581415509-af28687de862?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  fit: BoxFit.fitHeight,
                ),
              )*/
          ],
        ),
      );
    });
  }
}

/*
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }
*/
