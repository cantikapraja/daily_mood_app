import 'package:daily_mood_app/widgets/background_color.dart';
import 'package:daily_mood_app/pages/home/widgets/home_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../../utils/activities_Container.dart';
import 'widgets/home_daily_mood.dart';
import 'widgets/home_text.dart';
import 'widgets/home_search_bar.dart';
import 'widgets/home_time.dart';
import 'widgets/home_top_home.dart';

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
        alignment: AlignmentDirectional.bottomCenter,
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
                      const SizedBox(height: 10),
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
                      const SizedBox(height: 15),
                      searchBar(),
                      const SizedBox(height: 15),
                      DailyMood(),
                      const SizedBox(height: 20),
                      Text(
                        "Activities",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                ActivitiesContainer(),
                const SizedBox(height: 20),
              ],
            ),
          ),
          BottomNavBar(),
        ],
      ),
    );
  }
}
