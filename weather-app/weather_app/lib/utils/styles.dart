import 'package:flutter/material.dart';


// TODO: where to put
const softGreyForReadingColor = 757575;

class TypeScale {

  static const headline1 = TextStyle(fontFamily: 'Roboto', fontSize: 96.0, letterSpacing: -1.5);
  static const headline2 = TextStyle(fontFamily: 'Roboto', fontSize: 60.0, letterSpacing: -0.5);
  static const headline3 = TextStyle(fontFamily: 'Roboto', fontSize: 48.0, letterSpacing: 0);
  static const headline4 = TextStyle(fontFamily: 'Roboto', fontSize: 34.0, letterSpacing: 0.25);
  static const headline5 = TextStyle(fontFamily: 'Roboto', fontSize: 24.0, letterSpacing: 0);
  static const headline6 = TextStyle(fontFamily: 'Roboto', fontSize: 20.0, letterSpacing: 0.15);
  static const subtitle1 = TextStyle(fontFamily: 'Roboto', fontSize: 16.0, letterSpacing: 0.15);
  static const subtitle2 = TextStyle(fontFamily: 'Roboto', fontSize: 14.0, letterSpacing: 0.1);
  static const body1 = TextStyle(fontFamily: 'Roboto', fontSize: 16.0, letterSpacing: 0.5);
  static const body2 = TextStyle(fontFamily: 'Roboto', fontSize: 14.0, letterSpacing: 0.25);
  static const button = TextStyle(fontFamily: 'Roboto', fontSize: 14.0, letterSpacing: 1.25);
  static const caption = TextStyle(fontFamily: 'Roboto', fontSize: 12.0, letterSpacing: 0.4);
  static const overline = TextStyle(fontFamily: 'Roboto', fontSize: 10.0, letterSpacing: 1.5);
}
//class TypeScale {
//
//  static const headline1  = TextStyle(fontFamily: 'Roboto', fontSize: 96.0, letterSpacing: -1.5, color: Color(softGreyForReadingColor));
//  static const headline2  = TextStyle(fontFamily: 'Roboto', fontSize: 60.0, letterSpacing: -0.5, color: Color(softGreyForReadingColor));
//  static const headline3  = TextStyle(fontFamily: 'Roboto', fontSize: 48.0, letterSpacing: 0, color: Color(softGreyForReadingColor));
//  static const headline4  = TextStyle(fontFamily: 'Roboto', fontSize: 34.0, letterSpacing: 0.25, color: Color(softGreyForReadingColor));
//  static const headline5  = TextStyle(fontFamily: 'Roboto', fontSize: 24.0, letterSpacing: 0, color: Color(softGreyForReadingColor));
//  static const headline6  = TextStyle(fontFamily: 'Roboto', fontSize: 20.0, letterSpacing: 0.15, color: Color(softGreyForReadingColor));
//  static const subtitle1  = TextStyle(fontFamily: 'Roboto', fontSize: 16.0, letterSpacing: 0.15, color: Color(softGreyForReadingColor));
//  static const subtitle2  = TextStyle(fontFamily: 'Roboto', fontSize: 14.0, letterSpacing: 0.1, color: Color(softGreyForReadingColor));
//  static const body1      = TextStyle(fontFamily: 'Roboto', fontSize: 16.0, letterSpacing: 0.5, color: Color(softGreyForReadingColor));
//  static const body2      = TextStyle(fontFamily: 'Roboto', fontSize: 14.0, letterSpacing: 0.25, color: Color(softGreyForReadingColor));
//  static const button     = TextStyle(fontFamily: 'Roboto', fontSize: 14.0, letterSpacing: 1.25, color: Color(softGreyForReadingColor));
//  static const caption    = TextStyle(fontFamily: 'Roboto', fontSize: 12.0, letterSpacing: 0.4, color: Color(softGreyForReadingColor));
//  static const overline   = TextStyle(fontFamily: 'Roboto', fontSize: 10.0, letterSpacing: 1.5, color: Color(softGreyForReadingColor));
//}

const TextTheme SoftGreyForReadingTheme = TextTheme(
  display1   : TypeScale.headline1,
  display2   : TypeScale.headline2,
  display3   : TypeScale.headline3,
  display4   : TypeScale.headline4,
  headline   : TypeScale.headline5,
  title      : TypeScale.headline6,
  subhead    : TypeScale.subtitle1,
  subtitle   : TypeScale.subtitle2,
  body1      : TypeScale.body1,
  body2      : TypeScale.body2,
  button     : TypeScale.button,
  caption    : TypeScale.caption,
  overline   : TypeScale.overline,
);

