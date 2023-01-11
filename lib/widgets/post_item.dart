
import 'package:flutter/material.dart';
import 'package:instagram_clone/Utills/contant_utils.dart';
import 'package:instagram_clone/widgets/my_divider.dart';
import 'package:instagram_clone/widgets/post_item_bottom.dart';
import 'package:instagram_clone/widgets/post_item_header.dart';

class SinglePostWidget extends StatelessWidget {
  SinglePostWidget({required this.pos,Key? key}) : super(key: key);

  int pos;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostItemHeader(name: ConstantUtils.getPostName(pos),
          location: ConstantUtils.getLocation(pos),),
        Container(
          child: Image.asset("assets/images/StoryImage.png"),
        ),
        PostItemBottom(pos: pos,),
        MyDivider()
      ],
    );
  }
}
