import 'package:flutter/material.dart';

Map<int, Color> _primaryColor = {
  50: Color(0xffffff00).withOpacity(0.1),
  100: Color(0xffffff00).withOpacity(0.2),
  200: Color(0xffffff00).withOpacity(0.3),
  300: Color(0xffffff00).withOpacity(0.4),
  400: Color(0xffffff00).withOpacity(0.5),
  500: Color(0xffffff00).withOpacity(0.6),
  600: Color(0xffffff00).withOpacity(0.7),
  700: Color(0xffffff00).withOpacity(0.8),
  800: Color(0xffffff00).withOpacity(0.9),
  900: Color(0xffffff00).withOpacity(1),
};
final MaterialColor kPrimaryColor = MaterialColor(0xffffff00, _primaryColor);

Map<int, Color> _secondaryColor = {
  50: Color(0xffFF1493).withOpacity(0.1),
  100: Color(0xffFF1493).withOpacity(0.2),
  200: Color(0xffFF1493).withOpacity(0.3),
  300: Color(0xffFF1493).withOpacity(0.4),
  400: Color(0xffFF1493).withOpacity(0.5),
  500: Color(0xffFF1493).withOpacity(0.6),
  600: Color(0xffFF1493).withOpacity(0.7),
  700: Color(0xffFF1493).withOpacity(0.8),
  800: Color(0xffFF1493).withOpacity(0.9),
  900: Color(0xffFF1493).withOpacity(1),
};
final MaterialColor kSecondaryColor =
    MaterialColor(0xffFF1493, _secondaryColor);

Map<int, Color> _accentColor = {
  50: Color(0xff212121).withOpacity(0.1),
  100: Color(0xff212121).withOpacity(0.2),
  200: Color(0xff212121).withOpacity(0.3),
  300: Color(0xff212121).withOpacity(0.4),
  400: Color(0xff212121).withOpacity(0.5),
  500: Color(0xff212121).withOpacity(0.6),
  600: Color(0xff212121).withOpacity(0.7),
  700: Color(0xff212121).withOpacity(0.8),
  800: Color(0xff212121).withOpacity(0.9),
  900: Color(0xff212121).withOpacity(1),
};
final MaterialColor kAccentColor = MaterialColor(0xff212121, _accentColor);
