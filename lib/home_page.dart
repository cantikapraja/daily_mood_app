import 'package:flutter/material.dart';
import 'package:happy_project/into_screens/page_one.dart';
import 'package:happy_project/into_screens/page_three.dart';
import 'package:happy_project/into_screens/page_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'home_page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controllerHappy = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //pageView
          PageView(
            controller: controllerHappy,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [PageOne(), PageTwo(), PageThree()],
          ),

          //dot indicator
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    controllerHappy.jumpToPage(2);
                  },
                  child: Text("Skip"),
                ),
                SmoothPageIndicator(controller: controllerHappy, count: 3),
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage2();
                              },
                            ),
                          );
                        },
                        child: Text("Done"),
                      )
                    : GestureDetector(
                        onTap: () {
                          controllerHappy.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text("Next"),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
