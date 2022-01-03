import 'package:Project0001/utils/colors.dart';
import 'package:Project0001/utils/text.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({Key key, this.title, this.color}) : super(key: key);
  final String title;
  final bool color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: 343,
      decoration: BoxDecoration(
          color: color ? kPrimaryColor : kSecondaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: AppText.text6(title, color: kAccentColor),
      ),
    );
  }
}
