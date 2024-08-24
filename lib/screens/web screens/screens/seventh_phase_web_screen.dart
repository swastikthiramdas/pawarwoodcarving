import 'package:flutter/material.dart';

import '../../common widgets/widget/footext.dart';
import '../web widgets/hower_socialmedia_web.dart';

class SeventhPhaseWebScreen extends StatelessWidget {
  const SeventhPhaseWebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double heigth = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: 430,
      width: width,
      color: Colors.black,
      padding: EdgeInsets.only(top: 42, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              SizedBox(height: 10),
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 140.0),
            child: VerticalDivider(
              width: 2,
              color: Colors.white,
            ),
          ),
          Container(
            height: 220,
            width: 290,
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
