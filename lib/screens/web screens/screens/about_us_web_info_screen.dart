import 'package:flutter/material.dart';
import '../../../Backend/sizes.dart';
import '../../../utils/colors.dart';
import '../../../utils/my_data.dart';
import '../../common widgets/texts/italiana_regular.dart';
import '../../common widgets/texts/poppins_regular.dart';

class AboutUsWebInfoScreen extends StatelessWidget {
  const AboutUsWebInfoScreen({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final double heigth = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: SizedBox(
          width: width / width780,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Italiana(
                    text: AboutUsData[index][0],
                    fontsize: width / width45,
                  ),
                  SizedBox(height: heigth / heigth20),
                  SizedBox(
                    width: width / width360,
                    child: PoppinsRegular(
                      text:
                      AboutUsData[index][1],
                      color: ligthtext,
                    ),
                  )
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
          ),
        ),
      ),
    );
  }
}
