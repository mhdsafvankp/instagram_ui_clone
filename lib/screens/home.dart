
import 'package:flutter/material.dart';

import '../Utills/contant_utils.dart';
import '../widgets/horizontal_stories_widget.dart';
import '../widgets/my_divider.dart';
import '../widgets/post_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 9),
                child: const HorizontalStoriesWidget(),
              ),
              MyDivider(),
              for (int i = 0; i < ConstantUtils.postBloc.length; i++)
                SinglePostWidget(
                  pos: i,
                ),
            ],
          )
        ],
      ),
    );
  }
}
