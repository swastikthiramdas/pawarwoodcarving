import 'dart:async';

import 'package:flutter/material.dart';
import '../../../Backend/sizes.dart';
import '../../../animations/fade_in_animation_widget.dart';
import '../../../utils/colors.dart';
import '../../common widgets/texts/italiana_regular.dart';
import '../web widgets/half_to_full_underline_text.dart';
import '../web widgets/half_underline_text.dart';

class HomeSuggestionWidget extends StatefulWidget {
  HomeSuggestionWidget({super.key});

  @override
  State<HomeSuggestionWidget> createState() => _HomeSuggestionWidgetState();
}

class _HomeSuggestionWidgetState extends State<HomeSuggestionWidget> {
  final List = [
    "https://images.unsplash.com/photo-1680432611033-51aa83b1daf6?q=80&w=1372&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    'https://images.unsplash.com/photo-1630259535883-507226c48e95?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1666988727675-909d626482b7?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  ];

  int _currentindex = 0;

  late Timer _timer;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _OnTimeChange();
  }

  void _OnTimeChange(){
    _timer = Timer.periodic(const Duration(seconds: 6), (Timer timer) {
      if (_currentindex < List.length - 1) {
        _currentindex++;
      } else {
        _currentindex = 0;
      }

      _pageController.animateToPage(
        _currentindex,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeIn,
      );
    });
  }

  void _changepage(bool isrigth) {
    if (isrigth) {
      if (_currentindex < List.length - 1) {
        _currentindex++;
      }
    } else {
      if (_currentindex > 0) {
        _currentindex--;
      }
    }

    _pageController.animateToPage(
      _currentindex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    final double heigth = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(
          height: heigth,
          width: width,
          child: PageView.builder(
            controller: _pageController,
            itemCount: List.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: heigth,
                width: width,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: FadeInAnimatedWidget(
                        delay: const Duration(milliseconds: 280),
                        child: Container(
                          height: heigth,
                          width: width,
                          margin: EdgeInsets.only(left: 360),
                          child: Image.network(
                            List[index],
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: width,
                      height: heigth,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: const Alignment(-1.00, 0.00),
                          end: const Alignment(1, 0),
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(0),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width / width140),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FadeInAnimatedWidget(
                            delay: const Duration(milliseconds: 300),
                            child: Padding(
                              padding:
                               EdgeInsets.symmetric(vertical: heigth / heigth12),
                              child: HalfUnderLineText(
                                text: 'created by pawar wood carvings',
                                letterSpacing: -.5,
                                widthsize: width / width240,
                              ),
                            ),
                          ),
                          FadeInAnimatedWidget(
                            delay: const Duration(milliseconds: 300),
                            child: SizedBox(
                              width: width / width700,
                              child: Italiana(
                                text:
                                'Suitable for both personality and depth impacts.',
                                color: Colors.white,
                                fontsize: width / width90,
                              ),
                            ),
                          ),
                          FadeInAnimatedWidget(
                            delay: const Duration(milliseconds: 300),
                            child: Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: heigth / heigth15),
                              child: HalfToFullUnderlineText(
                                text: 'read more',
                                letterSpacing: -.5,
                                widthsize: width / width80,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Positioned(
          bottom: heigth / heigth80,
          left: width / width140,
          child: SizedBox(
            width: width / width450,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    _changepage(false);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: width / width4,
                      vertical: heigth / heigth4,
                    ),
                    color: Colors.grey,
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: width / width40,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: width / width20),
                InkWell(
                  onTap: () {
                    _changepage(true);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: width / width4, vertical: heigth / heigth4),
                    color: Colors.grey,
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: width / width40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
