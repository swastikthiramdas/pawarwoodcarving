import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../common widgets/texts/poppins_regular.dart';
import '../common widgets/texts/poppins_thin.dart';
import '../common widgets/widget/project_open_info_widget.dart';

class ProductOpenMobileScreen extends StatelessWidget {
  const ProductOpenMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                      height: 300,
                      margin: EdgeInsets.symmetric(horizontal: 5),
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
                    height: 300,
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
                    height: 300,
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
                ],
              ),
              SizedBox(
                  height: 20
              ),
              SizedBox(
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PoppinsThin(
                      text: 'Round Neck Pattern',
                      fontsize: 22,
                    ),
                    SizedBox(height: 40),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ProjectOpenInfoWidget(text2: 'Size',text1: '36’12',text1Size: 30,text2Size: 10,),
                            ProjectOpenInfoWidget(text2: 'Size',text1: '36’12',text1Size: 30,text2Size: 10,),
                          ],
                        ),
                        SizedBox(
                          width: 240,
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
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
