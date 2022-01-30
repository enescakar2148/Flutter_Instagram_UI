import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagran_ui/themes/colors.dart';
// import 'package:ig_ui_app/pages/home_page.dart';
// import 'package:ig_ui_app/pages/search_page.dart';
// import 'package:ig_ui_app/theme/colors.dart';

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  Widget appBar() {
    if (pageIndex == 0) {
      return AppBar(
        backgroundColor: appBarColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset("assets/images/camera_icon.svg", width: 30),
            Text("Instagram",
                style: TextStyle(fontFamily: "Billabong", fontSize: 34)),
            SvgPicture.asset("assets/images/message_icon.svg", width: 30)
          ],
        ),
      );
    } else if (pageIndex == 1) {
      return AppBar(
        backgroundColor: appBarColor,
      );
    } else if (pageIndex == 2) {
      return AppBar(
          backgroundColor: appBarColor,
          centerTitle: true,
          title: Text("Upload"));
    } else if (pageIndex == 3) {
      return AppBar(
          backgroundColor: appBarColor,
          centerTitle: true,
          title: Text("Activity"));
    } else {
      return AppBar(
          backgroundColor: appBarColor,
          centerTitle: true,
          title: Text("Account"));
    }
  }

  Widget bottomNavBar() {
    List bottomIcons = [
      pageIndex == 0
          ? "assets/images/home_active_icon.svg"
          : "assets/images/home_icon.svg",
      pageIndex == 1
          ? "assets/images/search_active_icon.svg"
          : "assets/images/search_icon.svg",
      pageIndex == 2
          ? "assets/images/upload_active_icon.svg"
          : "assets/images/upload_icon.svg",
      pageIndex == 3
          ? "assets/images/love_active_icon.svg"
          : "assets/images/love_icon.svg",
      pageIndex == 4
          ? "assets/images/account_active_icon.svg"
          : "assets/images/account_icon.svg",
    ];
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(color: appBottomNavColor),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomIcons.length, (index) {
            return InkWell(
                onTap: () {
                  selectedTaB(index);
                },
                child: SvgPicture.asset(bottomIcons[index], width: 25));
          }),
        ),
      ),
    );
  }

  void selectedTaB(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
