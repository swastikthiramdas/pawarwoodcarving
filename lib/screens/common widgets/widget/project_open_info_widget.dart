import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../texts/poppins_medium.dart';
import '../texts/poppins_regular.dart';

class ProjectOpenInfoWidget extends StatelessWidget {
  const ProjectOpenInfoWidget({super.key, this.text1Size = 50, this.text2Size = 16, required this.text2, required this.text1});
  final double text1Size;
  final double text2Size;
  final String text2;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PoppinsMedium(text: text1 , fontsize: text1Size,),
          PoppinsRegular(text: text2,fontsize: text1Size,letterSpacing: -.4,color: ligthtext,)
        ],
      ),
    );
  }
}
