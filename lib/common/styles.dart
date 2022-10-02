import 'package:flutter/material.dart';

import 'gen/colors.gen.dart';

/// Custom font styles variants
enum FontFamily { inter, sora }

/// Primary text styles
class TextStyles {
  const TextStyles(this.context, {this.family = FontFamily.inter});

  final BuildContext context;
  final FontFamily family;
  static TextTheme textTheme = const TextTheme(
    headline1: TextStyle(
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    headline2: TextStyle(
      fontSize: 60.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    headline3: TextStyle(
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
    ),
    headline4: TextStyle(
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headline5: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
    ),
    headline6: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    subtitle1: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    subtitle2: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyText1: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyText2: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    button: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    caption: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    overline: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  );

  TextStyle get headline1 => Theme.of(context).textTheme.headline1!.copyWith(
        fontFamily: family == FontFamily.inter
            ? primaryFontFamily
            : secondaryFontFamily,
      );
  TextStyle get headline2 => Theme.of(context).textTheme.headline2!.copyWith(
        fontFamily: family == FontFamily.inter
            ? primaryFontFamily
            : secondaryFontFamily,
      );
  TextStyle get headline3 => Theme.of(context).textTheme.headline3!.copyWith(
        fontFamily: family == FontFamily.inter
            ? primaryFontFamily
            : secondaryFontFamily,
      );
  TextStyle get headline4 => Theme.of(context).textTheme.headline4!.copyWith(
        fontFamily: family == FontFamily.inter
            ? primaryFontFamily
            : secondaryFontFamily,
      );
  TextStyle get headline5 => Theme.of(context).textTheme.headline5!.copyWith(
        fontFamily: family == FontFamily.inter
            ? primaryFontFamily
            : secondaryFontFamily,
      );
  TextStyle get headline6 => Theme.of(context).textTheme.headline6!.copyWith(
        fontFamily: family == FontFamily.inter
            ? primaryFontFamily
            : secondaryFontFamily,
      );
  TextStyle get subtitle1 => Theme.of(context).textTheme.subtitle1!.copyWith(
        fontFamily: family == FontFamily.inter
            ? primaryFontFamily
            : secondaryFontFamily,
      );
  TextStyle get subtitle2 => Theme.of(context).textTheme.subtitle2!.copyWith(
        fontFamily: family == FontFamily.inter
            ? primaryFontFamily
            : secondaryFontFamily,
      );
  TextStyle get bodyText1 => Theme.of(context).textTheme.bodyText1!.copyWith(
        fontFamily: family == FontFamily.inter
            ? primaryFontFamily
            : secondaryFontFamily,
      );
  TextStyle get bodyText2 => Theme.of(context).textTheme.bodyText2!.copyWith(
        fontFamily: family == FontFamily.inter
            ? primaryFontFamily
            : secondaryFontFamily,
      );
  TextStyle get button => Theme.of(context).textTheme.button!.copyWith(
        fontFamily: family == FontFamily.inter
            ? primaryFontFamily
            : secondaryFontFamily,
      );
  TextStyle get caption => Theme.of(context).textTheme.caption!.copyWith(
        fontFamily: family == FontFamily.inter
            ? primaryFontFamily
            : secondaryFontFamily,
      );
  TextStyle get overline => Theme.of(context).textTheme.overline!.copyWith(
        fontFamily: family == FontFamily.inter
            ? primaryFontFamily
            : secondaryFontFamily,
      );

  static String get primaryFontFamily => 'Inter';
  static String get secondaryFontFamily => 'Sora';
}

/// General reusable styles
class Styles {
  static BorderRadius primaryBorderRadius = BorderRadius.circular(20.0);
  static BorderRadius secondaryBorderRadius = BorderRadius.circular(10.0);
  static AppBarTheme appBarTheme = AppBarTheme(
    elevation: 0.0,
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: ColorName.midnight),
    titleTextStyle: TextStyles.textTheme.bodyText2!.copyWith(
      fontSize: 18.0,
      color: ColorName.midnight,
      fontWeight: FontWeight.w600,
    ),
    shape: Border(
      bottom: BorderSide(
        width: 2.0,
        color: Colors.grey[100]!,
        style: BorderStyle.solid,
      ),
    ),
  );
  static InputDecoration inputDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.grey[100],
    contentPadding: const EdgeInsets.all(16.0),
    hintStyle: TextStyles.textTheme.bodyText1!.copyWith(
      color: Colors.grey,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: secondaryBorderRadius,
      borderSide: const BorderSide(
        color: ColorName.midnight,
        width: 1.0,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: secondaryBorderRadius,
      borderSide: BorderSide(
        color: Colors.grey[300]!,
        width: 1.0,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: secondaryBorderRadius,
      borderSide: BorderSide(
        color: Colors.red[600]!,
        width: 1.0,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: secondaryBorderRadius,
      borderSide: BorderSide(
        color: Colors.red[600]!.withOpacity(0.5),
        width: 1.0,
      ),
    ),
    errorStyle: TextStyles.textTheme.bodyText2!.copyWith(
      fontWeight: FontWeight.w400,
      color: Colors.red[600]!,
    ),
    prefixStyle: TextStyles.textTheme.bodyText1!.copyWith(
      fontWeight: FontWeight.w600,
    ),
  );
}
