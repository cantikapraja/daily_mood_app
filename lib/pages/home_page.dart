import 'package:flutter/material.dart';
import 'package:happy_project/utils/background_color.dart';

import '../utils/activities.dart';
import '../utils/activities_Container.dart';
import '../utils/daily_mood.dart';
import '../utils/home_text.dart';
import '../utils/search_bar.dart';
import '../utils/time.dart';
import '../utils/top_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final times = ["Today", "Next week", "Next month"];

    return Scaffold(
      body: Stack(
        children: [
          BackgroundColor(),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      topHome(),
                      SizedBox(height: 30),
                      homeText(),
                      SizedBox(height: 10),
                      Row(
                        children: List.generate(times.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Time(
                              dateTime: times[index],
                              isSelected: selectedIndex == index,
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 15),
                      searchBar(),
                      SizedBox(height: 15),
                      DailyMood(),
                      SizedBox(height: 20),
                      Text(
                        "Activities",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                ActivitiesContainer(),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Container(
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
