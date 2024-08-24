import 'package:flutter/material.dart';
import '../../../Backend/sizes.dart';
import '../../../utils/colors.dart';
import '../../common widgets/texts/italiana_regular.dart';
import '../../common widgets/texts/poppins_regular.dart';
import '../../common widgets/texts/poppins_thin.dart';
import '../../common widgets/widget/project_open_info_widget.dart';

class ProductOpenWebScreen extends StatelessWidget {
  const ProductOpenWebScreen({super.key, this.img, this.text});

  final String? img;
  final String? text;

  @override
  Widget build(BuildContext context) {
    final double heigth = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: heigth / heigth400,
                      margin: EdgeInsets.symmetric(horizontal: 120),
                      /*child: Image.network(
                              List[index],
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fitWidth,
                            ),*/
                      color: Colors.pink,
                    ),
                  ),
                  Container(
                    width: width,
                    height: heigth / heigth400,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: const Alignment(-1.00, 0.00),
                        end: const Alignment(1, 0),
                        colors: [
                          Colors.black,
                          Colors.black.withOpacity(0),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width,
                    height: heigth / heigth400,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: const Alignment(1.00, 0.00),
                        end: const Alignment(-1, 0),
                        colors: [
                          Colors.black,
                          Colors.black.withOpacity(0),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 700,
                    margin: EdgeInsets.only(left: 120, top: heigth / heigth40),
                    child: Italiana(
                      text: 'Suitable for both personality and depth impacts.',
                      fontsize: 90,
                    ),
                  )
                ],
              ),
              SizedBox(height: heigth / heigth40),
              SizedBox(
                width: 780,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PoppinsThin(
                      text: 'Round Neck Pattern',
                      fontsize: 50,
                    ),
                    SizedBox(height: heigth / heigth40),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            ProjectOpenInfoWidget(
                              text2: 'Size',
                              text1: '36’12',
                            ),
                            ProjectOpenInfoWidget(
                              text2: 'Size',
                              text1: '36’12',
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 400,
                          child: PoppinsRegular(
                            text:
                                'Derived from the Greek word for "wood" or "forest," Dasos, a proud member of the Pawar Group, stands for the essence of nature. \n\nWe specialize in crafting premium, pre-fabricated cabinets designed to harmonize with your home. Our product range is customizable, ensuring a perfect fit for your space and requirements.',
                            fontsize: 20,
                            letterSpacing: -.4,
                            color: ligthtext,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: heigth / heigth60),
            ],
          ),
        ),
      ),
    );
  }
}
