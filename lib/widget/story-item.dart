import 'package:flutter/cupertino.dart';
import 'package:instagran_ui/themes/colors.dart';

class storyItem extends StatelessWidget {
  final String img;
  final String name;
  const storyItem({
    Key key,
    this.img,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, bottom: 10),
      child: Column(
        children: <Widget>[
          Container(
            width: 65,
            height: 65,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: storyBorderColor)),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: black, width: 2),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(img), fit: BoxFit.cover)),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 80,
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: white, overflow: TextOverflow.ellipsis),
            ),
          )
        ],
      ),
    );
  }
}
