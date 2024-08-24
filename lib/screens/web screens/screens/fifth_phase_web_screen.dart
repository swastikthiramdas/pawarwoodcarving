import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Backend/Routing/my_routes.dart';
import '../../../Backend/scroll_offset.dart';
import '../../../Backend/sizes.dart';
import '../../../animations/text_reveal.dart';
import '../../../utils/colors.dart';
import '../../common widgets/texts/italiana_regular.dart';
import '../../responsive/responsive_product_open_screens.dart';
import '../web widgets/product_card_widget_web.dart';
import '../web widgets/view_more_button_web.dart';
import 'dart:math' as math;

class FifthPhaseWebScreen extends StatefulWidget {
  const FifthPhaseWebScreen({super.key});

  @override
  State<FifthPhaseWebScreen> createState() => _FifthPhaseWebScreenState();
}

class _FifthPhaseWebScreenState extends State<FifthPhaseWebScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  PageController pageController = PageController(viewportFraction: 0.6);
  late Animation<double> textRevealAnimation;
  double currentPage = 0.0;
  final List = [
    "https://images.unsplash.com/photo-1680432611033-51aa83b1daf6?q=80&w=1372&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    'https://images.unsplash.com/photo-1630259535883-507226c48e95?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1666988727675-909d626482b7?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
        "https://images.unsplash.com/photo-1680432611033-51aa83b1daf6?q=80&w=1372&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    'https://images.unsplash.com/photo-1630259535883-507226c48e95?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1666988727675-909d626482b7?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
        "https://images.unsplash.com/photo-1680432611033-51aa83b1daf6?q=80&w=1372&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    'https://images.unsplash.com/photo-1630259535883-507226c48e95?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1666988727675-909d626482b7?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
        "https://images.unsplash.com/photo-1680432611033-51aa83b1daf6?q=80&w=1372&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    'https://images.unsplash.com/photo-1630259535883-507226c48e95?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1666988727675-909d626482b7?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  ];

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

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

  @override
  Widget build(BuildContext context) {
    final double heigth = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return BlocBuilder<DisplayOffset, Scrolloffset>(
      builder: (context, state) {
        if (state.scrollOffsetValue > 2294) {
          controller.forward();
        } else {
          controller.reverse();
        }
        return Column(
          children: [
            SizedBox(
              height: heigth / heigth80,
              width: width / width790,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextReveal(
                    maxHeigt: heigth / heigth80,
                    controller: controller,
                    child: Italiana(
                      text: 'Our Products',
                      fontsize: width / width75,
                      color: ligthtext,
                    ),
                  ),
                  TextReveal(
                    maxHeigt: heigth / heigth80,
                    controller: controller,
                    child: const WebViewMoreButton(),
                  )
                ],
              ),
            ),
            SizedBox(height: heigth / heigth32),
            TextReveal(
              maxHeigt: heigth / heigth364,
              controller: controller,
              child: Container(
                height: heigth / heigth364,
                padding: EdgeInsets.symmetric(horizontal: width / width400),
                child: PageView.builder(
                  allowImplicitScrolling: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: List.length,
                  controller: pageController,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResponsiveProductOpenScreen(
                              img: List[index],
                              text: 'is this really working',
                            ),
                          ),
                        );
                      },
                      child: ProductCardWidgetWeb(
                        img: List[index],
                        index: index,
                        currentpageval: currentPage,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
