import 'package:flutter/material.dart';

class BackgroundColor extends StatelessWidget {
  const BackgroundColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color(0xffC9D4EE),
              Color(0xffC9D4EE),
              Color(0xffBFDCD2),
              Colors.white,
            ],
            center: Alignment.topRight,
            radius: 1.2,
          ),
        ),
      ),
    );
  }
}
