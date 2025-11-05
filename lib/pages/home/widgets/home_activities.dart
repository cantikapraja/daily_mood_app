import 'package:flutter/material.dart';

import '../../../models/activity_model.dart';

class Activities extends StatelessWidget {
  final ActivityModel activity;
  const Activities({Key? key, required this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 120,
      decoration: BoxDecoration(
        color: activity.color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(activity.icon),
              ),
            ),
            Text(
              activity.label,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
