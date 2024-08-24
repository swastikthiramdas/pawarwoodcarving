import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../texts/poppins_medium.dart';
import '../texts/poppins_regular.dart';

class ProcessWidget extends StatelessWidget {
  const ProcessWidget({
    super.key,
    required this.text1,
    required this.text2,
    this.width = 100,
    this.fontsizetext1 = 50,
    this.fontsizetext2 = 16, this.height = 160, this.fontColorText2 = ligthtext, this.spaceHeight = 0, this.MakeItCenter = false,
  });

  final String text1;
  final String text2;
  final double width;
  final double fontsizetext1;
  final double fontsizetext2;
  final Color fontColorText2;
  final double height;
  final double spaceHeight;
  final bool MakeItCenter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        crossAxisAlignment: MakeItCenter?CrossAxisAlignment.center :CrossAxisAlignment.start,
        children: [
          PoppinsMedium(
            text: text1,
            fontsize: fontsizetext1,
          ),
          SizedBox(
            height: spaceHeight
          ),
          PoppinsRegular(
            text: text2,
            fontsize: fontsizetext2,
            color: fontColorText2,
          )
        ],
      ),
    );
  }
}
