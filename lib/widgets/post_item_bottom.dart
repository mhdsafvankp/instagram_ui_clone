import 'package:flutter/material.dart';
import 'package:instagram_clone/Utills/contant_utils.dart';
import 'package:instagram_clone/Utills/style_utils.dart';

class PostItemBottom extends StatelessWidget {
  PostItemBottom({required this.pos, Key? key}) : super(key: key);
  int pos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ConstantUtils.getIsLiked(pos) == PostLikes.notLiked.toString() ?
              Icon(Icons.favorite_border):
              Icon(Icons.favorite,color: Colors.red,),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Icon(Icons.mode_comment_outlined),
              ),
              Icon(Icons.send),
              Spacer(),
              Icon(Icons.bookmark_outline_outlined),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3, bottom: 3),
            child: Text(
              '${ConstantUtils.getLikeOrViewsCount(pos)} '
              '${(ConstantUtils.getType(pos) == PostTypes.image.toString()) ? 'likes' : 'views'}',
              style: CustomStyles.getNoOfLikesStyle(),
            ),
          ),
          Text.rich(
              TextSpan(
                  text: ConstantUtils.getPostName(pos),
                  style: CustomStyles.getNoOfLikesStyle(),
                  children: <InlineSpan>[
                    TextSpan(
                      text: '  ${ConstantUtils.getCommentText(pos)}',
                      style: CustomStyles.getCommentStyle(),
                    )
                  ]
              )
          ),
          Text('View all ${ConstantUtils.getCommentCount(pos)} comments',
              style: CustomStyles.getCommentHeaderStyle()),
        ],
      ),
    );
  }
}
