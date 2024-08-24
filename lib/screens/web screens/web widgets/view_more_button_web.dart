import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../../common widgets/texts/poppins_medium.dart';

class WebViewMoreButton extends StatefulWidget {
  const WebViewMoreButton({super.key});

  @override
  State<WebViewMoreButton> createState() => _WebViewMoreButtonState();
}

class _WebViewMoreButtonState extends State<WebViewMoreButton> {


  bool ishower = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (e){
        setState(() {
          ishower = true;
        });
      },
      onExit: (e){
        setState(() {
          ishower = false;
        });
      },
      child: SizedBox(
        width: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 4,
              width: 8,
              color: ishower? red :Colors.white,
            ),
            PoppinsMedium(text: 'VIEW ALL' , fontsize: 14,color: ishower? red : Colors.white,)
          ],
        ),
      ),
    );
  }
}
