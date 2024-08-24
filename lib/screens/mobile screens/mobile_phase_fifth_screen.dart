import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../common widgets/texts/italiana_regular.dart';
import '../common widgets/texts/poppins_medium.dart';
import '../common widgets/texts/poppins_regular.dart';
import '../web screens/web widgets/product_card_widget_web.dart';
import '../web screens/web widgets/view_more_button_web.dart';
import 'mobile widget/product_card_widget_mobile.dart';

class MobilePhaseFifthScreen extends StatefulWidget {
  const MobilePhaseFifthScreen({super.key});

  @override
  State<MobilePhaseFifthScreen> createState() => _MobilePhaseFifthScreenState();
}

class _MobilePhaseFifthScreenState extends State<MobilePhaseFifthScreen> {

  PageController pageController = PageController(viewportFraction: 0.6);
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double heigth = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: heigth-80,
      child: Column(
        children: [
          Italiana(
            text: 'Our Products',
            fontsize: 50,
            color: ligthtext,
          ),
          const SizedBox(height: 10),
          Container(
            height: 500,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: PageView.builder(
              allowImplicitScrolling: true,
              scrollDirection: Axis.vertical,
              itemCount: 2,
              controller: pageController,
              physics: NeverScrollableScrollPhysics(),
              clipBehavior: Clip.none,
              itemBuilder: (context, index) {
                return Container(
                  height: 500,
                  width: width,
                  margin: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                  child: Stack(
                    children: [
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(List[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(1),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        padding: const EdgeInsets.only(top: 60 , left: 40 , right: 40 , bottom: 30),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black.withOpacity(1),
                              Colors.transparent,
                              // ishower? Colors.black : Colors.transparent,
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 140,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  PoppinsRegular(
                                    text: 'ROUND NECK PATTERN',
                                    color: Colors.white,
                                    fontsize: 20,
                                    letterSpacing: -1,
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    height: 2,
                                    width:  140 * .3,
                                    color: Colors.white,

                                  )
                                ],
                              ),
                            ),
                            Flexible(
                              child: PoppinsMedium(
                                  text:
                                  'Best wood in Kalyan, Fine Art Great rounds and perfect square.'),
                            ),
                            WebViewMoreButton()
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
