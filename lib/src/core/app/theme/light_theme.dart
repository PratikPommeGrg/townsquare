import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../colors.dart';

final lightTheme = ThemeData(
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  timePickerTheme: TimePickerThemeData(
    cancelButtonStyle: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(AppColor.kWhite),
    ),
    confirmButtonStyle: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(AppColor.kWhite),
    ),
  ),
  datePickerTheme: DatePickerThemeData(
    // backgroundColor: AppColor.kBlueMain,
    confirmButtonStyle: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(AppColor.kWhite),
    ),
    cancelButtonStyle: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(AppColor.kWhite),
    ),
  ),
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColor.kNeutral100,
      //android background color
      statusBarBrightness: Brightness.light,
      //ios light background color and text icon dark color
      systemNavigationBarColor: Colors.black,
      statusBarIconBrightness: Brightness.dark, //android icon text color dark
    ),
    backgroundColor: AppColor.kNeutral100,
    shadowColor: Colors.transparent,
    surfaceTintColor: AppColor.kWhite,
    elevation: 0,
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    actionsIconTheme: const IconThemeData(color: Colors.black),
  ),
  scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStatePropertyAll(AppColor.kNeutral400)),
  brightness: Brightness.light,
  disabledColor: AppColor.kNeutral200,
  scaffoldBackgroundColor: AppColor.kNeutral100,
  primaryColor: AppColor.kBlueMain,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColor.kBlueMain, // Use your desired blue color
  ),
  // primarySwatch: MaterialColor(
  //   0xff0D0D0D,
  // ),
  // secondary: AppColor.kPrimaryLighter,
  // background: AppColor.kWhite,
  // error: AppColor.kRedMain,
  // ),
  fontFamily: 'GeneralSans',
  dialogTheme: DialogTheme(
    surfaceTintColor: AppColor.kWhite,
    backgroundColor: AppColor.kWhite,
    titleTextStyle: TextStyle(
      color: AppColor.kBlueMain,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    elevation: 0,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      surfaceTintColor: AppColor.kBlueMain,
      elevation: 0,
      foregroundColor: AppColor.kBlueMain,
      backgroundColor: AppColor.kBlueMain,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      disabledBackgroundColor: Colors.grey.shade400,
      disabledIconColor: AppColor.kNeutral200,
      disabledForegroundColor: AppColor.kNeutral200,
      shadowColor: Colors.transparent,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      surfaceTintColor: AppColor.kBlueMain,
      backgroundColor: AppColor.kBlueMain,
      elevation: 0,
      foregroundColor: AppColor.kBlueMain,
      shadowColor: Colors.transparent,
      disabledBackgroundColor: AppColor.kNeutral200,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: AppColor.kBlueLighter,
    foregroundColor: AppColor.kBlueMain,
    extendedPadding: EdgeInsets.zero,
    // elevation: 0,
    splashColor: AppColor.kBlueLightest,
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(fontSize: 30),
    headlineMedium: TextStyle(fontSize: 26),
    titleLarge: TextStyle(fontSize: 22),
    titleMedium: TextStyle(fontSize: 18),
    titleSmall: TextStyle(fontSize: 14),
    bodyLarge: TextStyle(fontSize: 16),
    bodyMedium: TextStyle(fontSize: 14),
    bodySmall: TextStyle(fontSize: 12),
    labelMedium: TextStyle(fontSize: 11),
  ),
);
