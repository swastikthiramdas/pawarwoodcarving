import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Backend/scroll_offset.dart';
import '../../../Backend/sizes.dart';
import '../../../animations/text_reveal.dart';
import '../../../utils/colors.dart';
import '../../common widgets/texts/poppins_medium.dart';
import '../../common widgets/texts/poppins_regular.dart';
import '../../common widgets/widget/process_widget.dart';
import '../web widgets/hower_change_widget.dart';

class FourthPhaseWebScreen extends StatefulWidget {
  const FourthPhaseWebScreen({super.key});

  @override
  State<FourthPhaseWebScreen> createState() => _FourthPhaseWebScreenState();
}

class _FourthPhaseWebScreenState extends State<FourthPhaseWebScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  PageController pageController = PageController(viewportFraction: 0.6);
  late Animation<double> textRevealAnimation;
  double currentPage = 0.0;

  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        print('Current val is ' + currentPage.toString());
        currentPage = pageController.page!;
      });
    });
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
      reverseDuration: const Duration(milliseconds: 375),
    );

    textRevealAnimation =
        Tween<double>(begin: 200.0, end: 0.0).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(0.0, 0.4, curve: Curves.easeIn),
    ));

    super.initState();
  }

  Widget _customewidget(String howertext, String tittle, String description) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextReveal(
              maxHeigt: 160,
              controller: controller,
              child: HowerChangeWidget(
                text: howertext,
                fontsize: 120,
                strokeWidth: 2,
              ),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextReveal(
                  maxHeigt: 40,
                  controller: controller,
                  child: PoppinsMedium(
                    text: tittle,
                    fontsize: 24,
                  ),
                ),
                SizedBox(
                  width: 460,
                  child: TextReveal(
                    maxHeigt: 460,
                    controller: controller,
                    child: PoppinsRegular(
                      text: description,
                      fontsize: 16,
                      color: ligthtext,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final double heigth = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return BlocBuilder<DisplayOffset, Scrolloffset>(
      builder: (context, state) {
        if (state.scrollOffsetValue > 2800) {
          controller.forward();
        } else {
          controller.reverse();
        }
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: width / width840,
              height: heigth / heigth815,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/back1.png'),
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
            Positioned(
              left: width / width140,
              top: heigth / heigth20,
              child: _customewidget('01', 'Design',
                  'Based on the customer’s idea, we use that information and try to put it in our visualizer tool and show them how well they meet the criteria in terms of colors and design.'),
            ),
            Positioned(
              left: width / width320,
              top: heigth / heigth160,
              child: _customewidget('02', 'Working',
                  'One designing part get done, we start with the selection of equipment and machine that might required for work.'),
            ),
            Positioned(
              left: width / width450,
              top: heigth / heigth360,
              child: _customewidget('03', 'Delivery',
                  'The moment we finish the construction part we place order on given address instantly via truck with safe delivery and perfect packaging.'),
            ),
            Positioned(
              bottom: heigth / heigth60,
              left: width / width140,
              child: SizedBox(
                width: width / width800,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProcessWidget(
                      text1: '128+',
                      text2: 'Products \navailable',
                      width: width / width140,
                    ),
                    ProcessWidget(
                      text1: '48 Designs',
                      text2: 'Made over 19 years',
                      width: width / width140,
                    ),
                    ProcessWidget(
                      text1: '16 Workers',
                      text2: 'Skilled and Professionals',
                      width: width / width140,
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
