
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vtb_frontend/HomePage.dart';
import 'package:vtb_frontend/profile.dart';


class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => CustomNavigationBarState();
}

class CustomNavigationBarState extends State<CustomNavigationBar> {
  PageController page = PageController();

  int index = 0;
  bool isTapped = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: page,
              children: [
                Scaffold(),
              HomePageScreen(),
              Profile()
            ],),
            Positioned(
                bottom: 22,
                left: 8,
                right: 8,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          onTap: (){
                            index = 0;
                            page.jumpToPage(index);
                            setState(() {

                            });
                          },
                          child: SvgPicture.asset('assets/Favorite.svg', color: index == 0? Color(0xFF007AFF): Color(0xFFC9CBCD))),
                      GestureDetector(
                          onTap: (){
                            index = 1;
                            page.jumpToPage(index);
                            setState(() {

                            });
                          },
                          child: SvgPicture.asset('assets/Home.svg', color: index == 1? Color(0xFF007AFF): Color(0xFFC9CBCD))),
                      GestureDetector(
                          onTap: (){
                            index = 2;
                            page.jumpToPage(index);
                            setState(() {

                            });
                          },
                          child: SvgPicture.asset('assets/Profile.svg', color: index == 2? Color(0xFF007AFF): Color(0xFFC9CBCD)))
                    ],
                  ),
                ))
          ],
        )
    );
  }
}
