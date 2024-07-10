import 'dart:math';

import 'package:flutter/material.dart';

const double tinySize = 5.0;
const double smallSize = 8.0;
const double mediumSize = 25.0;
const double largeSize = 50.0;
const double massiveSize = 120.0;

const Widget horizontalSpaceTiny = SizedBox(width: tinySize);
const Widget horizontalSpaceSmall = SizedBox(width: smallSize);
const Widget horizontalSpaceMedium = SizedBox(width: mediumSize);
const Widget horizontalSpaceLarge = SizedBox(width: largeSize);

const Widget verticalSpaceTiny = SizedBox(height: tinySize);
const Widget verticalSpaceSmall = SizedBox(height: smallSize);
const Widget verticalSpaceMedium = SizedBox(height: mediumSize);
const Widget verticalSpaceLarge = SizedBox(height: largeSize);
const Widget verticalSpaceMassive = SizedBox(height: massiveSize);

Widget spacedDivider = const Column(
  children: <Widget>[
    verticalSpaceMedium,
    Divider(color: Colors.blueGrey, height: 5.0),
    verticalSpaceMedium,
  ],
);

Widget verticalSpace(double height) => SizedBox(height: height);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenHeight(context) - offsetBy) / dividedBy, max);

double screenWidthFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenWidth(context) - offsetBy) / dividedBy, max);

double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);

double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);

double quarterScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 4);

double getResponsiveHorizontalSpaceMedium(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 10);
double getResponsiveSmallFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 15, max: 20);

double getResponsiveMediumFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 25, max: 40);

double getResponsiveLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 35, max: 50);

double getResponsiveExtraLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 45, max: 60);

double getResponsiveMassiveFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 55, max: 70);

double getResponsiveFontSize(BuildContext context,
    {double? fontSize, double? max}) {
  max ??= 100;

  var responsiveSize = min(
      screenWidthFraction(context, dividedBy: 10) * ((fontSize ?? 100) / 100),
      max);

  return responsiveSize;
}
