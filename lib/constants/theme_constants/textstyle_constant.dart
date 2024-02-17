import 'package:flutter/material.dart';

import 'color_constant.dart';

//textTheme light
TextStyle headline1Light = TextStyle(
  fontSize: 96.0,
  fontWeight: FontWeight.w300,
  letterSpacing: -1.5,
  color: workShopBlack,
);
TextStyle headline2Light = TextStyle(
  fontSize: 60.0,
  fontWeight: FontWeight.w300,
  letterSpacing: -0.5,
  color: workShopBlack,
);
TextStyle headline3Light = TextStyle(
  fontSize: 48.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0,
  color: workShopBlack,
);
TextStyle headline4Light = TextStyle(
  fontSize: 34.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.25,
  color: workShopBlack,
);
TextStyle headline5Light = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0,
  color: workShopBlack,
);
TextStyle headline6Light = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.15,
  color: workShopBlack,
);
TextStyle subtitle1Light = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.15,
  color: workShopBlack,
);
TextStyle subtitle2Light = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  color: workShopBlack,
);
TextStyle bodyText1Light = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.5,
  color: workShopBlack,
);
TextStyle bodyText2Light = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.25,
  color: workShopBlack,
);
TextStyle buttonLight = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.25,
  color: workShopBlack,
);
TextStyle captionLight = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.4,
  color: workShopBlack,
);
TextStyle overlineLight = TextStyle(
  fontSize: 10.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 1.5,
  color: workShopBlack,
);

//textTheme dark
TextStyle headline1Dark = const TextStyle(
  fontSize: 96.0,
  fontWeight: FontWeight.w300,
  letterSpacing: -1.5,
  color: Color(0xffffffff),
);
TextStyle headline2Dark = const TextStyle(
  fontSize: 60.0,
  fontWeight: FontWeight.w300,
  letterSpacing: -0.5,
  color: Color(0xffffffff),
);
TextStyle headline3Dark = const TextStyle(
  fontSize: 48.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0,
  color: Color(0xffffffff),
);
TextStyle headline4Dark = const TextStyle(
  fontSize: 34.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.25,
  color: Color(0xffffffff),
);
TextStyle headline5Dark = const TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0,
  color: Color(0xffffffff),
);
TextStyle headline6Dark = const TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.15,
  color: Color(0xffffffff),
);
TextStyle subtitle1Dark = const TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.15,
  color: Color(0xffffffff),
);
TextStyle subtitle2Dark = const TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
  color: Color(0xffffffff),
);
TextStyle bodyText1Dark = const TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.5,
  color: Color(0xffffffff),
);
TextStyle bodyText2Dark = const TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.25,
  color: Color(0xffffffff),
);
TextStyle buttonDark = const TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.25,
  color: Color(0xffffffff),
);
TextStyle captionDark = const TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.4,
  color: Color(0xffffffff),
);
TextStyle overlineDark = const TextStyle(
  fontSize: 10.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 1.5,
  color: Color(0xffffffff),
);

//텍스트필드 TextStyle
TextStyle kTextFieldTextStyle = const TextStyle(fontSize: 20.0);

//텍스트필드 InputDecoration
const kTextFieldDecoration = InputDecoration(
  // hintStyle: TextStyle(color: Colors.grey),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  // hintText: '',
  // enabledBorder: OutlineInputBorder(
  //   borderSide: BorderSide(color: Color(0xffbb86fc), width: 1.0),
  //   borderRadius: BorderRadius.all(Radius.circular(32.0)),
  // ),
  // focusedBorder: OutlineInputBorder(
  //   borderSide: BorderSide(color: Color(0xffbb86fc), width: 2.0),
  //   borderRadius: BorderRadius.all(Radius.circular(32.0)),
  // ),
);

///리더보드 스코어 listTile TextStyle
const kScoreTileTextStyle = TextStyle(
  fontSize: 20.0,
);

//
// const kMessageTextFieldDecoration = InputDecoration(
//   contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//   hintText: 'Type your message here...',
//   border: InputBorder.none,
// );

// const kSendButtonTextStyle = TextStyle(
//   color: Colors.lightBlueAccent,
//   fontWeight: FontWeight.bold,
//   fontSize: 18.0,
// );
