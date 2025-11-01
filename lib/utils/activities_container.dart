import 'package:flutter/material.dart';

import 'activities.dart';

class ActivitiesContainer extends StatelessWidget {
  const ActivitiesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 20),
          Activities(
            textDalam: "Journal",
            icon: Icons.book_outlined,
            warna: Colors.blue.shade100,
          ),
          SizedBox(width: 10),
          Activities(
            textDalam: "Singing",
            icon: Icons.mic_external_on,
            warna: Colors.red.shade100,
          ),
          SizedBox(width: 10),
          Activities(
            textDalam: "studying",
            icon: Icons.airline_seat_recline_extra_rounded,
            warna: Colors.purple.shade100,
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
