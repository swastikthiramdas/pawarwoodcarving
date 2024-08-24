import 'package:flutter/material.dart';

import '../common widgets/widget/process_widget.dart';
import '../web screens/web widgets/hower_change_widget.dart';

class MobilePhaseFourScreen extends StatefulWidget {
  const MobilePhaseFourScreen({super.key});

  @override
  State<MobilePhaseFourScreen> createState() => _MobilePhaseFourScreenState();
}

class _MobilePhaseFourScreenState extends State<MobilePhaseFourScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HowerChangeWidget(text: '01',fontsize: 100,),
                ProcessWidget(
                  text1: 'Design',
                  text2: 'Based on the customer’s idea, we use that information and try to put it in our visualizer tool and show them how well they meet the criteria in terms of colors and design.',
                  fontsizetext1: 26,
                  fontsizetext2: 16,
                  fontColorText2: Color(0xFF6D5E56),
                  spaceHeight: 10,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: 270,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HowerChangeWidget(text: '02',fontsize: 100,),
                  ProcessWidget(
                    height: 200,
                    text1: 'Working',
                    text2: 'Based on the customer’s idea, we use that information and try to put it in our visualizer tool and show them how well they meet the criteria in terms of colors and design.',
                    fontsizetext1: 26,
                    fontsizetext2: 16,
                    fontColorText2: Color(0xFF6D5E56),
                    spaceHeight: 10,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 270,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HowerChangeWidget(text: '03',fontsize: 100,),
                  ProcessWidget(
                    height: 200,
                    text1: 'Delivery',
                    text2: 'Based on the customer’s idea, we use that information and try to put it in our visualizer tool and show them how well they meet the criteria in terms of colors and design.',
                    fontsizetext1: 26,
                    fontsizetext2: 16,
                    fontColorText2: Color(0xFF6D5E56),
                    spaceHeight: 10,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0 , vertical: 40.0),
            child: Divider(
              thickness: 2,
              color: Colors.white,
            ),
          ),
          ProcessWidget(
            MakeItCenter: true,
            text1: '128+',
            text2: 'Products available',
            fontsizetext1: 50,
            fontsizetext2: 16,
            fontColorText2: Color(0xFF6D5E56),
            spaceHeight: 10,
          ),
          ProcessWidget(
            MakeItCenter: true,
            text1: '48 Designs',
            text2: 'Made over 19 years',
            fontsizetext1: 50,
            fontsizetext2: 16,
            fontColorText2: Color(0xFF6D5E56),
            spaceHeight: 10,
          ),
          ProcessWidget(
            MakeItCenter: true,
            text1: '16 Workers',
            text2: 'Skilled and Professionals',
            fontsizetext1: 50,
            fontsizetext2: 16,
            fontColorText2: Color(0xFF6D5E56),
            spaceHeight: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0 , vertical: 40.0),
            child: Divider(
              thickness: 2,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
