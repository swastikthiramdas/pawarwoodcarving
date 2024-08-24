import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../texts/poppins_regular.dart';

class CustomeTextField extends StatefulWidget {
  const CustomeTextField(
      {super.key,
      required this.tittile,
      this.errorMaxLine,
      this.characterLimit = 20,
      this.keyboardType = TextInputType.text, this.TittleFontSize = 24, this.CountFontSize = 14, this.Spacing = 10});

  final String tittile;
  final int? errorMaxLine;
  final int characterLimit;
  final TextInputType keyboardType;
  final double TittleFontSize;
  final double CountFontSize;
  final double Spacing;

  @override
  State<CustomeTextField> createState() => _CustomeTextFieldState();
}

class _CustomeTextFieldState extends State<CustomeTextField> {
  bool textOurOfLimit = true;
  int InputValue = 0;

  void setValidator(bool valid, int num) {
    setState(() {
      InputValue = num;
      textOurOfLimit = valid;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PoppinsRegular(
          text: widget.tittile,
          fontsize: widget.TittleFontSize,
          color: ligthtext,
        ),
        TextField(
          keyboardType: widget.keyboardType,
          onChanged: (inputValue) {
            if (inputValue.length <= widget.characterLimit) {
              setValidator(true, inputValue.length);
            } else {
              setValidator(false, inputValue.length);
            }
          },
          decoration: InputDecoration(
            errorMaxLines: widget.errorMaxLine,
            hoverColor: Colors.yellow,
            focusColor: Colors.white,
            hintStyle: const TextStyle(color: Colors.white),
            errorText: textOurOfLimit ? null : "character limit reached",
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        SizedBox(height: widget.Spacing),
        Align(
          alignment: Alignment.bottomRight,
          child: PoppinsRegular(
            text: '${InputValue}/${widget.characterLimit}',
            color: ligthtext,
            fontsize: widget.CountFontSize,
          ),
        )
      ],
    );
  }
}
