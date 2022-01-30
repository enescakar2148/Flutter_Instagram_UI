import 'package:flutter/cupertino.dart';
import 'package:instagran_ui/constant/story_json.dart';
import 'package:instagran_ui/themes/colors.dart';
import 'package:instagran_ui/widget/story-item.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Body();
  }

  Widget Body() {
    return Column(
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(stories.length, (index) {
              return storyItem(
                  img: stories[index]['img'], name: stories[index]['name']);
            }),
          ),
        )
      ],
    );
  }
}
