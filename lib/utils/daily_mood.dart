import 'package:flutter/material.dart';

class DailyMood extends StatelessWidget {
  const DailyMood({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Daily mood",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/happy.jpg"),
                ),
                border: Border.all(color: Colors.black, width: 1.5),
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/smile.jpg"),
                ),
                border: Border.all(color: Colors.black, width: 1.5),
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/normal.jpg"),
                ),
                border: Border.all(color: Colors.black, width: 1.5),
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/bad.jpg"),
                ),
                border: Border.all(color: Colors.black, width: 1.5),
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/angry.jpg"),
                ),
                border: Border.all(color: Colors.black, width: 1.5),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
