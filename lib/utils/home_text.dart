import 'package:flutter/material.dart';

class homeText extends StatelessWidget {
  const homeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Hi,", style: TextStyle(fontSize: 35)),
            Text(
              " Yuna",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Text("How are you doing today?", style: TextStyle(fontSize: 30)),
      ],
    );
  }
}
