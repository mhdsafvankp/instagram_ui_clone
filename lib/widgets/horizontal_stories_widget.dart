import 'package:flutter/material.dart';
import 'package:instagram_clone/Utills/contant_utils.dart';
import 'package:instagram_clone/Utills/style_utils.dart';
import 'package:instagram_clone/widgets/story_widget.dart';

class HorizontalStoriesWidget extends StatelessWidget {
  const HorizontalStoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, pos) {
          return Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StoryCard(isProfilePictureAvailable: ConstantUtils.isProfilePictureAvailable,
                type: pos == 0 ?
                  StoryWidgetType.profile :
                StoryWidgetType.storyWidget,
                isStoryBoarder: pos == 0 ? ConstantUtils.isAddedStory : true,),   // single Item widget
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(pos == 0
                      ? 'Your Story'
                      : ConstantUtils.getStoryName(pos),),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
