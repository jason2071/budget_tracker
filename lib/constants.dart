import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFE9901);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kBackgroundColor = Color(0xFFF2F2F2);
const kPagingIndicator = Color(0xFF48BECF);

const kAnimationDuration = Duration(milliseconds: 200);

const kGradientColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xFFF35A36), Color(0xFFF37A17)],
);

const kHeaderGradientColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Colors.black87, Colors.transparent],
);

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 15),
  blurRadius: 27,
  color: Colors.black12,
);

// https
const BASE_URL = "https://www.beurguide.net";
const headers = {
  "APP-API-KEY": "1f733b2e16a59cc62a899a3df57a055c835ffb50",
};

// key Preference
const USER_HASH = "@user_hash";
const USER_NAME = "@user_name";
const USER_AVATAR = "@user_avatar";
const USER_MEMBER_CREATOR = "@user_member_creator";
