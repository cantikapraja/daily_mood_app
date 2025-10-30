import 'package:flutter/material.dart';

class topHome extends StatelessWidget {
  const topHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,

          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage("assets/images/pfp.jpg")),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          child: Icon(Icons.notifications_none),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 2),
          ),
        ),
      ],
    );
  }
}
