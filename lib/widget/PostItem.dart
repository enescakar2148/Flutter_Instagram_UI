import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagran_ui/constant/post_json.dart';
import 'package:instagran_ui/themes/colors.dart';
import 'package:line_icons/line_icons.dart';

class PostItem extends StatelessWidget {
  final String pp;
  final String likedBy;
  final String commentCount;
  final String post;
  final String name;
  final String caption;
  final isLike;
  const PostItem({
    Key key,
    this.pp,
    this.likedBy,
    this.commentCount,
    this.post,
    this.name,
    this.caption,
    this.isLike,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
                              pp,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    name,
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
                  image: NetworkImage(post), fit: BoxFit.cover)),
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
                  isLike
                      ? SvgPicture.asset(
                          "assets/images/loved_icon.svg",
                          width: 25,
                        )
                      : SvgPicture.asset(
                          "assets/images/love_icon.svg",
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
            padding: const EdgeInsets.only(
              left: 10,
              right: 12,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                      text: "Liked By ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: likedBy,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                  const TextSpan(
                      text: " and ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  const TextSpan(
                      text: "987 others",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700))
                ],
              ),
            )),
        const SizedBox(height: 12),
        Padding(
            padding: const EdgeInsets.only(left: 10, right: 12),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: name,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w700)),
                  TextSpan(
                      text: caption,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w700))
                ],
              ),
            )),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 12, bottom: 10),
          child: Text(
            'View $commentCount comment',
            style: TextStyle(
                color: white.withOpacity(0.3),
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
