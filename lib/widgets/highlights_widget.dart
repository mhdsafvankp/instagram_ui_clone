import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/story_widget.dart';

import '../Utills/contant_utils.dart';

class HighlightsWidget extends StatelessWidget {
  const HighlightsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: ConstantUtils.highlightName.length,
        itemBuilder: (context, pos) {
          return Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StoryCard(isProfilePictureAvailable: ConstantUtils.isProfilePictureAvailable,
                  type: pos == (ConstantUtils.highlightName.length - 1) ?
                  StoryWidgetType.highlightNew :
                  StoryWidgetType.highlightWidget,),   // single Item widget
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(pos == (ConstantUtils.highlightName.length - 1)
                      ? 'New'
                      : ConstantUtils.getHighlightName(pos),),
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
