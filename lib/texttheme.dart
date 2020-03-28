import 'package:flutter/material.dart';

TextTheme textTheme = TextTheme(
  headline1: _AppTextStyles.headline1,
  headline2: _AppTextStyles.headline2,
  headline3: _AppTextStyles.headline3,
  headline4: _AppTextStyles.headline4,
  headline5: _AppTextStyles.headline5,
  headline6: _AppTextStyles.headline6,
  subtitle1: _AppTextStyles.subtitle1,
  subtitle2: _AppTextStyles.subtitle2,
  bodyText1: _AppTextStyles.bodyText1,
  bodyText2: _AppTextStyles.bodyText2,
  button: _AppTextStyles.button,
  caption: _AppTextStyles.caption,
  overline: _AppTextStyles.overline,
);

class _AppTextStyles {
  static const _fontSize = 24.0;
  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w800;
  static const _bold = FontWeight.w700;

  static const _headingFont = 'Roboto';
  static const _textFont = 'Cabin';

  static final headline1 = TextStyle(
      fontFamily: _headingFont,
      fontWeight: _semiBold);

  static final headline2 = TextStyle(
    fontFamily: _headingFont,
  );

  static final headline3 = TextStyle(
    fontFamily: _headingFont,
  );

  static final headline4 = TextStyle(
    fontFamily: _headingFont,
  );

  static final headline5 = TextStyle(
    fontFamily: _headingFont,
  );

  static final headline6 = TextStyle(
    fontFamily: _headingFont,
  );

  static final subtitle1 = TextStyle(
    fontFamily: _headingFont,
  );

  static final subtitle2 = TextStyle(
    fontFamily: _headingFont,
  );

  static final bodyText1 =
  TextStyle(fontFamily: _textFont, fontWeight: _semiBold, fontSize: 16);

  static final bodyText2 =
  TextStyle(fontFamily: _textFont, fontWeight: _regular, fontSize: 16);

  static final button = TextStyle(
    fontFamily: _headingFont,
  );

  static final caption = TextStyle(
    fontFamily: _headingFont,
  );

  static final overline = TextStyle(
    fontFamily: _headingFont,
  );
}
