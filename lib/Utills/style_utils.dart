import 'package:flutter/material.dart';

class CustomStyles {
  static TextStyle getNameStyle() {
    return const TextStyle(
        letterSpacing: 0, fontWeight: FontWeight.w500, fontSize: 16 , color: Colors.black);
  }

  static TextStyle getProfileNameStyle() {
    return const TextStyle(
        letterSpacing: 0, fontWeight: FontWeight.w500, fontSize: 13);
  }

  static TextStyle getNoOfLikesStyle() {
    return const TextStyle(
        letterSpacing: 0, fontWeight: FontWeight.w700, fontSize: 13);
  }

  static TextStyle getCommentStyle() {
    return const TextStyle(
        fontWeight: FontWeight.normal, fontSize: 12);
  }

  static TextStyle getCommentHeaderStyle() {
    return const TextStyle(fontWeight: FontWeight.normal, fontSize: 11);
  }

  static TextStyle getLocationStyle() {
    return const TextStyle(
        letterSpacing: 0.5, fontWeight: FontWeight.normal, fontSize: 12);
  }

  static TextStyle getFollowsNumberStyle() {
    return const TextStyle(
        letterSpacing: 0.5, fontWeight: FontWeight.w800, fontSize: 12);
  }

  static TextStyle getFollowsTextStyle() {
    return const TextStyle(
        letterSpacing: 0.5, fontWeight: FontWeight.normal, fontSize: 12);
  }
}
