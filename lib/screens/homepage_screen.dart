import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagran_ui/constant/post_json.dart';
import 'package:instagran_ui/constant/story_json.dart';
import 'package:instagran_ui/themes/colors.dart';
import 'package:instagran_ui/widget/story-item.dart';
import 'package:line_icons/line_icons.dart';

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
                  return storyItem(
                      img: stories[index]['img'], name: stories[index]['name']);
                }),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                    posts[0]["profileImg"],
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          posts[0]["name"],
                          style: const TextStyle(
                              color: white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Icon(
                      LineIcons.horizontalEllipsis,
                      color: white,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Container(
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(posts[0]["postImg"]),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  left: 10,
                  top: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/images/loved_icon.svg",
                          width: 25,
                        ),
                        const SizedBox(width: 20),
                        SvgPicture.asset(
                          "assets/images/comment_icon.svg",
                          width: 25,
                        ),
                        const SizedBox(width: 20),
                        SvgPicture.asset(
                          "assets/images/message_icon.svg",
                          width: 25,
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                    SvgPicture.asset(
                      "assets/images/save_icon.svg",
                      width: 25,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 12),
                child: RichText(
                  text: TextSpan(text: "Liked By"),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
