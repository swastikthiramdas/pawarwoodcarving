import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../texts/poppins_regular.dart';

class Button2 extends StatefulWidget {
  const Button2({super.key, this.heigth = 60, this.fontsize = 24});
  final double heigth;
  final double fontsize;

  @override
  State<Button2> createState() => _Button2State();
}

class _Button2State extends State<Button2> {


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
      child: AnimatedContainer(
        height: widget.heigth,
        color: ishower ? Colors.white : red  ,
        duration: const Duration(milliseconds: 300),
        child: Center(
          child: PoppinsRegular(
            text: 'SUBMIT',
            color: Colors.black,
            fontsize: widget.fontsize,
          ),
        ),
      ),
    );
  }
}
