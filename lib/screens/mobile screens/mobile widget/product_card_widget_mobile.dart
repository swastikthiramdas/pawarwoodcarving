import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../common widgets/texts/poppins_medium.dart';
import '../../common widgets/texts/poppins_regular.dart';
import '../../web screens/web widgets/view_more_button_web.dart';

class ProductcardWidgetMobile extends StatefulWidget {
  const ProductcardWidgetMobile({super.key, required this.img, required this.index, required this.currentpageval});
  final String img;
  final int index;
  final double currentpageval;


  @override
  State<ProductcardWidgetMobile> createState() => _ProductcardWidgetMobileState();
}

class _ProductcardWidgetMobileState extends State<ProductcardWidgetMobile> {





  bool ishower = false;

  @override
  Widget build(BuildContext context) {
    double ContainerWidth = 300;

    double _height = 364;
    double _scaleFactor = 0.8;
    Matrix4 matrix = new Matrix4.identity();
    if (widget.index == widget.currentpageval.floor()) {

      var currScale = 1 - (widget.currentpageval - widget.index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);

    } else if (widget.index == widget.currentpageval.floor() + 1) {

      var currScale =
          _scaleFactor + (widget.currentpageval - widget.index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);

    } else if (widget.index == widget.currentpageval.floor() - 1) {

      var currScale = 1 - (widget.currentpageval - widget.index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);

    } else {

      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);

    }

    return MouseRegion(
      onHover: (event) {
        setState(() {
          ishower = true;
        });
      },
      onExit: (event) {
        setState(() {
          ishower = false;
        });
      },

      child: Transform(
        transform: matrix,
        child: Container(
          height: 364,
          width: ContainerWidth,
          margin: const EdgeInsets.all(5),
          child: Stack(
            children: [
              Container(
                width: ContainerWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              AnimatedContainer(
                width: ContainerWidth,
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(ishower ? 1 : widget.currentpageval+1 == widget.index || widget.currentpageval-1 == widget.index ? 1 :.5),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
              AnimatedContainer(
                width: ContainerWidth,
                duration: const Duration(milliseconds: 300),
                padding: EdgeInsets.only(top: 60 , left: 40 , right: 40 , bottom: 30),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [
                      Colors.black.withOpacity(ishower ? 1 : widget.currentpageval+1 == widget.index || widget.currentpageval-1 == widget.index ? 1 :.5),
                      Colors.transparent,
                      // ishower? Colors.black : Colors.transparent,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PoppinsRegular(
                            text: 'ROUND NECK PATTERN',
                            color: Colors.white,
                            fontsize: 20,
                            letterSpacing: -1,
                          ),
                          SizedBox(height: 5),
                          AnimatedContainer(
                            height: 2,
                            width: ishower ? 140 : 140 * .3,
                            color: ishower ? red : Colors.white,
                            duration: const Duration(milliseconds: 300),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      child: PoppinsMedium(
                          text:
                          'Best wood in Kalyan, Fine Art Great rounds and perfect square.'),
                    ),
                    WebViewMoreButton()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
