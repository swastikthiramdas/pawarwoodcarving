import 'package:flutter/material.dart';
import '../../common widgets/buttons/button1.dart';
import '../../common widgets/buttons/button2.dart';
import '../../common widgets/texts/poppins_regular.dart';
import '../../common widgets/widget/custome_textfield.dart';

class SixthPhaseWebScreen extends StatefulWidget {
  const SixthPhaseWebScreen({super.key});

  @override
  State<SixthPhaseWebScreen> createState() => _SixthPhaseWebScreenState();
}

class _SixthPhaseWebScreenState extends State<SixthPhaseWebScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: Column(
        children: [
          PoppinsRegular(text: 'Contact Us', fontsize: 75,),
          SizedBox(height: 50),
          CustomeTextField(tittile: 'Name',characterLimit: 2,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: CustomeTextField(tittile: 'Contact Numer',),
          ),
          CustomeTextField(tittile: 'Email ID',),
          Padding(
            padding: const EdgeInsets.only(top: 40.0 , bottom: 50),
            child: CustomeTextField(tittile: 'Your Message',),
          ),
          Button2()
        ],
      ),
    );
  }
}
