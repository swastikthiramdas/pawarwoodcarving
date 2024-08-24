import 'package:flutter/material.dart';
import '../../../Backend/sizes.dart';
import '../../../utils/colors.dart';
import '../../common widgets/texts/italiana_regular.dart';
import '../../responsive/responsive_about_us_info_screen.dart';

class AboutUsWebMainScreen extends StatelessWidget {
  const AboutUsWebMainScreen({super.key});
  void navigate(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double heigth = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: SizedBox(
          width: width / width780,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Italiana(
                text: 'About Us',
                fontsize: width / width75,
              ),
              SizedBox(height: heigth / heigth40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          navigate(context, const ResponsiveAboutUsInfoScreen(index: 0,));
                        },
                        child: Italiana(
                          text: 'History',
                          fontsize: width / width45,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: heigth / heigth10),
                        child: TextButton(
                          onPressed: () {
                            navigate(context, const ResponsiveAboutUsInfoScreen(index: 1,));
                          },
                          child: Italiana(
                            text: 'About company',
                            fontsize: width / width45,
                          ),
                        ),
                      ),
                      /*TextButton(
                        onPressed: () {
                          navigate(context, const ResponsiveAboutUsInfoScreen(tittle: 'Board of directors',));
                          },
                        child: Italiana(
                          text: 'Board of directors',
                          fontsize: 45,
                        ),
                      ),*/
                    ],
                  ),
                  SizedBox(
                    width: width / width280,
                    child: Image.asset(
                      'assets/images/tree.png',
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fitWidth,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
