import 'package:Project0001/const/textstyle.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool multiText;
  final bool centered;

  AppText.text1(this.text,
      {color: Colors.black, this.multiText: false, this.centered: false})
      : style = text1Style.copyWith(color: color);

  AppText.text2(this.text,
      {color: Colors.black, this.multiText: false, this.centered: false})
      : style = text2Style.copyWith(color: color);

  AppText.text3(this.text,
      {color: Colors.black, this.multiText: false, this.centered: false})
      : style = text3Style.copyWith(color: color);

  AppText.text4(this.text,
      {color: Colors.black, this.multiText: false, this.centered: false})
      : style = text4Style.copyWith(color: color);

  AppText.text5(this.text,
      {color: Colors.black, this.multiText: false, this.centered: false})
      : style = text5Style.copyWith(color: color);

  AppText.text6(this.text,
      {color: Colors.black, this.multiText: false, this.centered: false})
      : style = text6Style.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: multiText ? 9999999999 : 1,
      overflow: TextOverflow.ellipsis,
      textAlign: centered ? TextAlign.center : TextAlign.left,
      style: style,
    );
  }
}
