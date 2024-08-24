import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../texts/poppins_regular.dart';

class Button1 extends StatefulWidget {
  const Button1({super.key});

  @override
  State<Button1> createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  bool ishower = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: MouseRegion(
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
        child: AnimatedContainer(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          color: ishower ? Colors.white : red,
          height: 60,
          width: 260,
          duration: Duration(milliseconds: 250),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PoppinsRegular(
                text: 'read more',
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      color: ishower ? Colors.black : Colors.white,
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
