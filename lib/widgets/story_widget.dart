

import 'package:flutter/material.dart';
import 'package:instagram_clone/Utills/contant_utils.dart';

enum StoryWidgetType{
  storyWidget , highlightWidget , highlightNew , profile , bottomProfile
}

class StoryCard extends StatelessWidget {
  StoryCard({required this.type,
    this.insideRadius,
    this.outsideRadius,
    required this.isProfilePictureAvailable,
    this.isStoryBoarder = true,Key? key}) : super(key: key);

  bool isProfilePictureAvailable;
  bool isStoryBoarder;
  double? outsideRadius;
  double? insideRadius;
  StoryWidgetType type;

  @override
  Widget build(BuildContext context) {
    return getStoryWidget(type,
        outsideRadius ?? 34.0, insideRadius ?? 30.0,
        isProfilePictureAvailable, isStoryBoarder);
  }
}


/* types:
    -1: noProfile
    0 : profile,
    1 : storyWidget,
    2 : highlightWidget,
    3 : highlightNew
* */
Widget getStoryWidget(StoryWidgetType type,
    double outsideRadius,
    double insideRadius,
    bool isProfilePictureAvailable,
    bool isStoryBoarder) {
  switch (type) {
    case StoryWidgetType.storyWidget:
      return _storyBoarderHandling(
          childWidget: _otherStoryWidget(insideRadius),
          outsideRadius: outsideRadius,
          flag: isStoryBoarder);
    case StoryWidgetType.highlightWidget:
      return highlightWidgets(outsideRadius, insideRadius);
    case StoryWidgetType.highlightNew:
      return highlightNewWidget(outsideRadius, insideRadius);
    case StoryWidgetType.profile:
      return _storyBoarderHandling(
          childWidget: _getYourStoryWidget(
              insideRadius, isProfilePictureAvailable, isStoryBoarder),
          outsideRadius: outsideRadius,
          flag: isStoryBoarder);
    case StoryWidgetType.bottomProfile:
      return _storyBoarderHandling(
          childWidget: _bottomStoryWidget(insideRadius , isProfilePictureAvailable),
          outsideRadius: outsideRadius,
          flag: isStoryBoarder);
    default:
      return const CircularProgressIndicator();
  }
}

Widget _storyBoarderHandling({ required Widget childWidget ,
  required double outsideRadius ,
  required bool flag , Color color = Colors.purple }){
  return flag ? CircleAvatar(
    backgroundColor: color,
    radius: outsideRadius,
    child: childWidget,
  ) : childWidget;
}


// StoryWidgetType.storyWidget
Widget _otherStoryWidget(double insideRadius){
  return Stack(
    alignment: Alignment.bottomRight,
    children:[
      CircleAvatar(
        backgroundColor: Colors.white,
        radius: insideRadius + 2,
        child: CircleAvatar(
          radius: insideRadius,
          backgroundImage: AssetImage(ConstantUtils.storiesImage),
        ),
      ),
    ] ,
  );
}

// StoryWidgetType.profile
// StoryWidgetType.noProfile
Widget _bottomStoryWidget(double insideRadius,  bool isProfilePictureAvailable){
  return Stack(
    alignment: Alignment.bottomRight,
    children:[
      CircleAvatar(
        backgroundColor: Colors.white,
        radius: insideRadius + 2,
        child: CircleAvatar(
          radius: insideRadius,backgroundImage: isProfilePictureAvailable
            ? AssetImage(ConstantUtils.profilePhoto)
            : null,
          backgroundColor: isProfilePictureAvailable ? null : Colors.black,
        ),
      ),
    ] ,
  );
}


// 32
Widget _getYourStoryWidget(
    double insideRadius, bool isProfilePictureAvailable, bool isStoryBoarder) {
  return Stack(
    alignment: Alignment.bottomRight,
    children: [
      _storyBoarderHandling(
          childWidget: CircleAvatar(
            backgroundImage: isProfilePictureAvailable
                ? AssetImage(ConstantUtils.profilePhoto)
                : null,
            backgroundColor: isProfilePictureAvailable ? null : Colors.black,
            radius: insideRadius,
          ),
          outsideRadius: insideRadius + 2,
          flag: isStoryBoarder,
          color: Colors.white),
      if (!isStoryBoarder)
        Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueAccent,
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ))
    ],
  );
}

Widget highlightNewWidget(double outerRadius ,double insideRadius){
  return CircleAvatar(
    radius: outerRadius - 2 ,
    backgroundColor: Colors.black,
    child: CircleAvatar(
      radius: insideRadius,
      backgroundColor: Colors.white,
      child: Icon(Icons.add , color: Colors.black,),
    ),
  );
}

Widget highlightWidgets(double outerRadius, double insideRadius) {
  return CircleAvatar(
      backgroundColor: Colors.black12,
      radius: outerRadius,
      child: _storyBoarderHandling(
          childWidget: CircleAvatar(
            radius: insideRadius,
            backgroundImage: AssetImage(ConstantUtils.storiesImage),
          ),
          outsideRadius: insideRadius + 2,
          flag: true,
      color: Colors.white));
}
