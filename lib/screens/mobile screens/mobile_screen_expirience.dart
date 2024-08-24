import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../common widgets/texts/poppins_regular.dart';
import '../common widgets/texts/poppins_semibold.dart';
import '../web screens/web widgets/hower_change_widget.dart';

class MobileScreenExpirience extends StatelessWidget {
  const MobileScreenExpirience({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PoppinSemiBold(
            text: 'Invaluable \nExperience',
            fontsize: 26,
          ),
          SizedBox(height: 10),
          PoppinsRegular(
            text:
                'For over 18 years, my journey in the wood carving industry has been a testament to the art of precision and creativity.',
            fontsize: 16,
            letterSpacing: -.4,
            textAlign: TextAlign.center,
            color: ligthtext,
          ),
          SizedBox(height: 30),
          HowerChangeWidget(text: '19+',fontsize: 80,),
          PoppinsRegular(text: 'years of experience' , fontsize: 15,color: brown,)
        ],
      ),
    );
  }
}
