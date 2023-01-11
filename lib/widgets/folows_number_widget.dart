import 'package:flutter/material.dart';
import 'package:instagram_clone/Utills/style_utils.dart';

class FollowNumber extends StatelessWidget {
  FollowNumber({required this.number,
    required this.text,Key? key}) : super(key: key);

  String number;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text( number , style: CustomStyles.getFollowsNumberStyle()),
        Text( text , style: CustomStyles.getFollowsTextStyle(),)
      ],
    );
  }
}
