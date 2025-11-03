import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your Expression",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        Text(
          "Feel free to jot down whatever comes to mind. We'll go through it together.",
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
