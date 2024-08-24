import 'package:flutter/material.dart';

import '../common widgets/widget/footext.dart';
import '../web screens/web widgets/hower_socialmedia_web.dart';

class MobilePhaseSeventhScreen extends StatefulWidget {
  const MobilePhaseSeventhScreen({super.key});

  @override
  State<MobilePhaseSeventhScreen> createState() =>
      _MobilePhaseSeventhScreenState();
}

class _MobilePhaseSeventhScreenState extends State<MobilePhaseSeventhScreen> {
  @override
  Widget build(BuildContext context) {
    final double heigth = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: heigth - 80,
      color: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FooterText(
            header: 'Address',
            description: '4140 Parker Rd. Allentown, New Mexico 31134',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: FooterText(
              header: 'Email',
              description: 'georgia.young@example.com',
            ),
          ),
          FooterText(
            header: 'Contact',
            description: '+91 9876543210',
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HowerSocialMediaWeb(
                img1: 'assets/images/yt_default.png',
                img2: 'assets/images/yt_after.png',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: HowerSocialMediaWeb(
                  img1: 'assets/images/twitter_default.png',
                  img2: 'assets/images/twitter_after.png',
                ),
              ),
              HowerSocialMediaWeb(
                img1: 'assets/images/insta_default.png',
                img2: 'assets/images/insta_after.png',
              ),
            ],
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: 60.0, horizontal: width * .1),
            child: Divider(
              thickness: 2,
              color: Colors.white,
            ),
          ),
          Container(
            height: 140,
            width: width,
            margin: EdgeInsets.symmetric(horizontal: 60),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/full_logo.png'),
                filterQuality: FilterQuality.high,
                fit: BoxFit.fitWidth,
              ),
            ),
          )
        ],
      ),
    );
  }
}
