import 'package:flutter/material.dart';

const LargeTextSize = 22.0;
const MeduimTextSize = 16.0;
const SmallTextSize = 12.0;

const String FrontNameDefault = 'KaushanScript';
const String FrontNameTitle = 'Montserrat';

const Color TextColorDark = Colors.black;
const Color TextColorLight = Colors.white;
const Color TextColorAccent = Colors.red;
const Color TextColorFaint = Color.fromRGBO(125, 125, 125, 1.0);

const DefaultPaddingHorizontal = 12.0;

const AppBarTextStyle = TextStyle(
  fontFamily: FrontNameTitle,
  fontWeight: FontWeight.w300,
  fontSize: MeduimTextSize,
  color: TextColorLight
);

const TitleTextStyle = TextStyle(
  fontFamily: FrontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: LargeTextSize,
  color: TextColorDark
);

const SubTitleTextStyle = TextStyle(
  fontFamily: FrontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: MeduimTextSize,
  color: TextColorAccent
);

const CaptionTextStyle = TextStyle(
  fontFamily: FrontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: SmallTextSize,
  color: TextColorAccent
);

const Body1TextStyle = TextStyle(
  fontFamily: FrontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: MeduimTextSize,
  color: TextColorDark
);