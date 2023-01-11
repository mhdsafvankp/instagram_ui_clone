
import 'package:flutter/material.dart';
import 'package:instagram_clone/Utills/style_utils.dart';
import 'package:instagram_clone/widgets/story_widget.dart';

import '../Utills/contant_utils.dart';

class PostItemHeader extends StatelessWidget {
  PostItemHeader({required this.name, required this.location ,Key? key}) : super(key: key);

  String name;
  String location;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          StoryCard( outsideRadius: 20,
            insideRadius: 17,
            isProfilePictureAvailable: ConstantUtils.isProfilePictureAvailable,
            type: StoryWidgetType.storyWidget,),
          SizedBox(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text( name, style: CustomStyles.getNameStyle(),),
                  Text( location ,style: CustomStyles.getLocationStyle(),)
                ],
              ),
            ),
          ),
          Spacer(),
          Icon(Icons.more_vert_rounded)
        ],
      ),
    );
  }
}
