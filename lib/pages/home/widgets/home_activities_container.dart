import 'package:daily_mood_app/models/activity_model.dart';
import 'package:flutter/material.dart';

import '../../journal/journal_page.dart';
import 'home_activities.dart';

class ActivitiesContainer extends StatelessWidget {
  const ActivitiesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 20),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => JournalingPage()),
            ),
            child: Activities(
              activity: ActivityModel(
                label: "Journal",
                icon: Icons.book_outlined,
                color: Colors.blue.shade100,
              ),
            ),
          ),
          SizedBox(width: 10),
          Activities(
            activity: ActivityModel(
              label: "Singing",
              icon: Icons.airline_seat_recline_extra_rounded,
              color: Colors.purple.shade100,
            ),
          ),
          SizedBox(width: 10),
          Activities(
            activity: ActivityModel(
              label: "Studying",
              icon: Icons.mic_external_on,
              color: Colors.red.shade100,
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
