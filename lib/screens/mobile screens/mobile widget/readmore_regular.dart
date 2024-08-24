import 'package:flutter/material.dart';

import '../../common widgets/texts/poppins_regular.dart';

class ReadMoreRegularText extends StatefulWidget {
  const ReadMoreRegularText(
      {super.key,
      required this.text,
      this.fontsize = 14,
      this.color = Colors.white});

  final String text;
  final double fontsize;
  final Color color;

  @override
  State<ReadMoreRegularText> createState() => _ReadMoreRegularTextState();
}

class _ReadMoreRegularTextState extends State<ReadMoreRegularText> {
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PoppinsRegular(
          text: widget.text,
          fontsize: widget.fontsize,
          color: widget.color,
          textOverflow:
              showMore ? TextOverflow.visible : TextOverflow.ellipsis,
          maxLine: showMore? null : 6,
        ),
        SizedBox(height: 5),
        Align(
          alignment: Alignment.bottomRight,
          child: GestureDetector(
            onTap: () {
              setState(() {
                showMore = !showMore;
              });
            },
            child: PoppinsRegular(
              text: showMore ? 'Show Less' : 'Read More',
              fontsize: 14,
              color: Colors.blueAccent,
            ),
          ),
        )
      ],
    );
  }
}
