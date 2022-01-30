import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagran_ui/constant/post_json.dart';
import 'package:instagran_ui/constant/story_json.dart';
import 'package:instagran_ui/widget/PostItem.dart';
import 'package:instagran_ui/widget/StroyItem.dart';

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
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Row(
                children: List.generate(stories.length, (index) {
                  return StoryItem(
                      img: stories[index]['img'], name: stories[index]['name']);
                }),
              ),
            ),
          ),
          Column(
            children: List.generate(posts.length, (index) {
              return PostItem(
                post: posts[index]['postImg'],
                name: posts[index]['name'],
                pp: posts[index]['profileImg'],
                commentCount: posts[index]['commentCount'],
                likedBy: posts[index]['likedBy'],
                caption: posts[index]['caption'],
                isLike: posts[index]["isLoved"],
              );
            }),
          )
        ],
      ),
    );
  }
}
