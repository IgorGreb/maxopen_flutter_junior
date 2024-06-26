import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String header;
  final double fontSize;
  final String fontFamily;
  final Color fontColor;
  final double heightBox;
  final double widthBox;
   

  const HeaderText(
      {super.key,
      required this.header,
      required this.fontSize,
      required this.fontFamily,
      required this.fontColor,
      required this.heightBox,
      required this.widthBox,
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightBox,
      width: widthBox,
      child: Text(
        header,
        style: TextStyle(
          color: fontColor,
          fontFamily: fontFamily,
          fontSize: fontSize,
        
        ),
      ),
    );
  }
}
