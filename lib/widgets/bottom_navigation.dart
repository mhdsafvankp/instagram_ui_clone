import 'package:flutter/material.dart';
import 'package:instagram_clone/Utills/navigation_stack.dart';
import 'package:instagram_clone/widgets/story_widget.dart';

import '../Utills/contant_utils.dart';
enum BottomNavigationRoutes {
  home,profile
}

class BottomNavigationUI extends StatelessWidget {
  BottomNavigationUI({required this.currentScreen ,Key? key}) : super(key: key);

  BottomNavigationRoutes currentScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 1,
          color: Colors.black12,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home , size: 32,),
              Icon(Icons.search, size: 32,),
              Icon(Icons.camera_outlined, size: 32,),
              Icon(Icons.favorite_border, size: 32,),
              InkWell(
                onTap: (){
                  if (currentScreen != BottomNavigationRoutes.profile) {
                    NavigationUtils.navigationHistory.add('profile');
                    Navigator.pushNamed(context, 'profile');
                  }
                },
                child: StoryCard(outsideRadius: 16,
                  insideRadius: 13,
                  isProfilePictureAvailable: ConstantUtils.isProfilePictureAvailable,
                  type: StoryWidgetType.bottomProfile,
                  isStoryBoarder: ConstantUtils.isAddedStory,),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
