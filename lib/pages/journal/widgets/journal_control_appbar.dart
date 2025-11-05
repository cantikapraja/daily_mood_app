import 'package:flutter/material.dart';

import '../../home/home_page.dart';

class ControlAppbar extends StatelessWidget {
  const ControlAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          ),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 1.5),
            ),
            child: Icon(Icons.arrow_back),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 1.5),
          ),
          child: Icon(Icons.menu),
        ),
      ],
    );
  }
}
