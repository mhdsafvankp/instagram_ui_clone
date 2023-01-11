
enum PostTypes { image , video}
enum PostLikes { liked , notLiked }

class ConstantUtils{

  // User details
  static const bool isProfilePictureAvailable = true;
  static const bool isAddedStory = false;
  static const String profilePhoto = 'assets/images/selfie.jpeg';
  static const String userName = 'Safvan Vlr Kph';
  static const String profileComment = 'Try to be rainbow in someone\'s cloud' ;
  static const String noOfPost = '72' ;
  static const String noOfFollowers = '6.8M' ;
  static const String noOfFollowing = '678' ;




  static const String storiesImage = "assets/images/StoryImage.png";
  static final List<String> _storyName = ['Nepo','Akkus','Bella','Aju','Kunjan','dundu'];
  static final List<String> highlightName = ['outings','Foodings','Family','Me', 'Dummy'];

  static const String NAME = 'name';
  static const String LOCATION = 'location';
  static const String TYPE = 'type';
  static const String LIKE_OR_VIEWS = 'likesOrViews';
  static const String COMMENT_COUNT = 'commentCount';
  static const String COMMENT_TEXT = 'commentText';
  static const String POST_TIME = 'postTime';
  static const String ISLIKED = 'isLiked';

  static final List<Map<String, String>> postBloc = [
    {
      NAME: 'Akkus',
      LOCATION: 'Thrissur,Kerala',
      TYPE: PostTypes.image.toString(),
      LIKE_OR_VIEWS: '1,000',
      COMMENT_COUNT: '6',
      COMMENT_TEXT: 'save nature 🥰🥰',
      POST_TIME: '1 hours ago',
      ISLIKED: PostLikes.notLiked.toString(),
    },
    {
      NAME: 'Nepo',
      LOCATION: 'Vadakara,Kerala',
      TYPE: PostTypes.image.toString(),
      LIKE_OR_VIEWS: '5,57,812',
      COMMENT_COUNT: '612',
      COMMENT_TEXT: 'Good days! [ nature ] 💕 ❄️',
      POST_TIME: '3 hours ago',
      ISLIKED: PostLikes.liked.toString(),
    },
    {
      NAME: 'Dundu',
      LOCATION: 'Ottappalam,Kerala',
      TYPE: PostTypes.image.toString(),
      LIKE_OR_VIEWS: '10,123,11',
      COMMENT_COUNT: '532',
      COMMENT_TEXT: 'dundu coming 🚲',
      POST_TIME: '1 minute ago',
      ISLIKED: PostLikes.liked.toString(),
    },
    {
      NAME: 'Kunjan',
      LOCATION: 'Tanur,Kerala',
      TYPE: PostTypes.image.toString(),
      LIKE_OR_VIEWS: '57,812',
      COMMENT_COUNT: '12',
      COMMENT_TEXT: 'be positive 🧘‍',
      POST_TIME: '48 hours ago',
      ISLIKED: PostLikes.liked.toString(),
    },
    {
      NAME: 'Aju',
      LOCATION: 'Edappal,Kerala',
      TYPE: PostTypes.image.toString(),
      LIKE_OR_VIEWS: '812',
      COMMENT_COUNT: '2',
      COMMENT_TEXT: 'peace 🔯',
      POST_TIME: '32 hours ago',
      ISLIKED: PostLikes.notLiked.toString(),
    }
  ];

  // Will take array value in cyclic based on the array length
  static String getHighlightName(pos){
    return highlightName.elementAt(pos % (highlightName.length));
  }

  // Will take array value in cyclic based on the array length
  static String getStoryName(pos){
    return _storyName.elementAt(pos % (_storyName.length));
  }

  // from preset values on postBloc object
  static String getPostName(pos){
    return postBloc.elementAt(pos)[NAME] ?? '';
  }
  static String getLocation(pos){
    return postBloc.elementAt(pos)[LOCATION] ?? '';
  }
  static String getType(pos){
    return postBloc.elementAt(pos)[TYPE] ?? '';
  }
  static String getLikeOrViewsCount(pos){
    return postBloc.elementAt(pos)[LIKE_OR_VIEWS] ?? '';
  }
  static String getCommentCount(pos){
    return postBloc.elementAt(pos)[COMMENT_COUNT] ?? '';
  }
  static String getCommentText(pos){
    return postBloc.elementAt(pos)[COMMENT_TEXT] ?? '';
  }
  static String getPostTime(pos){
    return postBloc.elementAt(pos)[POST_TIME] ?? '';
  }
  static String getIsLiked(pos){
    return postBloc.elementAt(pos)[ISLIKED] ?? '';
  }




}