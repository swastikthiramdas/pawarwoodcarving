import 'package:flutter/material.dart';

import '../common widgets/buttons/button2.dart';
import '../common widgets/texts/poppins_regular.dart';
import '../common widgets/widget/custome_textfield.dart';

class MobilePhaseSixthScreen extends StatefulWidget {
  const MobilePhaseSixthScreen({super.key});

  @override
  State<MobilePhaseSixthScreen> createState() => _MobilePhaseSixthScreenState();
}

class _MobilePhaseSixthScreenState extends State<MobilePhaseSixthScreen> {
  @override
  Widget build(BuildContext context) {
    final double heigth = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          PoppinsRegular(
            text: 'Contact Us',
            fontsize: 35,
          ),
          SizedBox(height: 50),
          CustomeTextField(
            tittile: 'Name',
            characterLimit: 2,
            TittleFontSize: 15,
            Spacing: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: CustomeTextField(
              tittile: 'Contact Numer',
              TittleFontSize: 15,
              Spacing: 5,
            ),
          ),
          CustomeTextField(
            tittile: 'Email ID',
            TittleFontSize: 15,
            Spacing: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 30),
            child: CustomeTextField(
              tittile: 'Your Message',
              TittleFontSize: 15,
              Spacing: 5,
            ),
          ),
          Button2(
            heigth: 40,
            fontsize: 15,
          )
        ],
      ),
    );
  }
}
