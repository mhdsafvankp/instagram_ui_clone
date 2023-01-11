import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/Utills/contant_utils.dart';
import 'package:instagram_clone/widgets/bottom_navigation.dart';
import 'package:instagram_clone/widgets/custom_button.dart';
import 'package:instagram_clone/widgets/folows_number_widget.dart';
import 'package:instagram_clone/widgets/highlights_widget.dart';
import 'package:instagram_clone/widgets/story_widget.dart';

import '../Utills/style_utils.dart';

class ProfileHome extends StatelessWidget {
  const ProfileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        automaticallyImplyLeading: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        elevation: 5,
        backgroundColor: Colors.white,
        shadowColor: Colors.black12,
        title: SizedBox(
            height: 35,
            child: Align(
              alignment: Alignment.centerLeft,
                child: Text(
              ConstantUtils.userName,
              style: CustomStyles.getNameStyle(),
            ))),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.add_box_outlined, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, top: 16, bottom: 16),
            child: Icon(Icons.line_weight_rounded, color: Colors.black),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  StoryCard(
                    isProfilePictureAvailable:
                    ConstantUtils.isProfilePictureAvailable,
                    outsideRadius: 38,
                    insideRadius: 34,
                    type: StoryWidgetType.profile,
                    isStoryBoarder: ConstantUtils.isAddedStory,
                  ),
                  FollowNumber(
                    number: ConstantUtils.noOfPost,
                    text: 'Posts',
                  ),
                  FollowNumber(
                    number: ConstantUtils.noOfFollowers,
                    text: 'Follows',
                  ),
                  FollowNumber(
                    number: ConstantUtils.noOfFollowing,
                    text: 'Following',
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 5),
              child: Text(
                ConstantUtils.userName,
                style: CustomStyles.getProfileNameStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 5),
              child: Text(
                ConstantUtils.profileComment,
                style: CustomStyles.getCommentStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30 , left: 15 , right: 15),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: CustomButton(
                      icon: null,
                      text: 'Edit profile',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CustomButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      text: null,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18 , bottom: 18),
              child: HighlightsWidget(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationUI(currentScreen: BottomNavigationRoutes.profile),
    );
  }
}
