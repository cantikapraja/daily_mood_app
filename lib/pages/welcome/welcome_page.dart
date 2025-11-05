import 'package:flutter/material.dart';

import '../../widgets/background_color.dart';
import '../home/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundColor(),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Daily Mood",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Icon(Icons.circle, size: 15),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Container(
                    height: 350,
                    width: 350,
                    child: Image.asset("assets/images/cute.png"),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Your mental \n health matters",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Start your journey with us",
                    style: TextStyle(fontSize: 20),
                  ),

                  const SizedBox(height: 45),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      ),
                      child: Container(
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Let's start now",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
