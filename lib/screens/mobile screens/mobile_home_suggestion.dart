import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../animations/fade_in_animation_widget.dart';
import '../common widgets/texts/italiana_regular.dart';
import '../common widgets/texts/poppins_regular.dart';
import '../web screens/web widgets/half_to_full_underline_text.dart';
import '../web screens/web widgets/half_underline_text.dart';

class MobileHomeSuggestion extends StatefulWidget {
  const MobileHomeSuggestion({super.key});

  @override
  State<MobileHomeSuggestion> createState() => _MobileHomeSuggestionState();
}

class _MobileHomeSuggestionState extends State<MobileHomeSuggestion> {


  final List = [
    "https://images.unsplash.com/photo-1680432611033-51aa83b1daf6?q=80&w=1372&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    'https://images.unsplash.com/photo-1630259535883-507226c48e95?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1666988727675-909d626482b7?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  ];

  int _currentindex = 0;

  late Timer _timer;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _OnTimeChange();
  }

  void _OnTimeChange(){
    _timer = Timer.periodic(Duration(seconds: 6), (Timer timer) {
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
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }


  @override
  Widget build(BuildContext context) {
    final double heigth = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 280,
      child: Stack(
        children: [
          SizedBox(
            height: 260,
            width: width,
            child: PageView.builder(
              controller: _pageController,
              itemCount: List.length,
              itemBuilder: (context, index) {
                _currentindex = index;
                return SizedBox(
                  height: 260,
                  width: width,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: FadeInAnimatedWidget(
                          delay: Duration(milliseconds: 280),
                          child: Container(
                            height: 260,
                            width: width,
                            margin: EdgeInsets.only(left: 60),
                            child: Image.network(
                              List[_currentindex],
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        height: 260,
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
                        padding: const EdgeInsets.only(left: 60.0),
                        child: SizedBox(
                          height: 260,
                          width: width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 8.0),
                                child: PoppinsRegular(
                                  text: 'created by pawar wood carvings',
                                  color: Colors.white,
                                  fontsize: 12,
                                  letterSpacing: -.5,
                                ),
                              ),
                              SizedBox(
                                width: 260,
                                child: Italiana(
                                  text:
                                  'Suitable for both personality and depth impacts.',
                                  color: Colors.white,
                                  fontsize: 36,
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 2.0),
                                child: HalfToFullUnderlineText(
                                  text: 'read more',
                                  letterSpacing: -.5,
                                  widthsize: 60,
                                  fontsize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: List.length,
              effect: const ExpandingDotsEffect(
                dotHeight: 12,
                dotWidth: 12,
                activeDotColor: Color(0xFFD9D9D9),
                dotColor: Color(0xFFD9D9D9)
              ),
            ),
          )
        ],
      ),
    );
  }
}
