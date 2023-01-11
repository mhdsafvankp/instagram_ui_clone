

import 'package:flutter/material.dart';

import '../Utills/style_utils.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.icon , required this.text , Key? key}) : super(key: key);

  String? text;
  Icon? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 30,
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(4)
        ),
        child: Center(
          child: text != null ?
          Text( text ?? '' , style: CustomStyles.getProfileNameStyle(),):
          icon,
        ),
      ),
    );
  }
}
