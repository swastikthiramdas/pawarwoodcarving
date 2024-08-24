import 'package:flutter/material.dart';
import '../common widgets/buttons/button1.dart';
import '../common widgets/texts/poppins_regular.dart';
import 'mobile widget/readmore_regular.dart';

class MobilePhaseThreeScreen extends StatelessWidget {
  const MobilePhaseThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double heigth = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 400,
          color: Colors.pink,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
          child: PoppinsRegular(
            text:
                'Introducing Swastik Pattern,  Venture under the esteemed Pawar Wood Carving.',
            fontsize: 26,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18, right: 18 , bottom: 30),
          child: ReadMoreRegularText(
            text:
                'Derived from the Hellenic term denoting "timber" or "wooded area," Silva, a proud member of the Pawar Consortium, symbolizes the core of the natural world. \n\nWe excel in shaping high-quality, prefabricated enclosures engineered to synchronize seamlessly with your residence. Our assortment of offerings is adaptable, guaranteeing an ideal match for your area and specifications.',
            fontsize: 20,
            color: const Color(0xFF6D5E56),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Button1(),
        ),
      ],
    );
  }
}
