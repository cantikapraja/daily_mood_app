import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(35),
        color: Colors.purple[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Menulis jadi lebih mudah",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Center(
              child: Lottie.network(
                "https://lottie.host/2b153445-5e19-4fc5-bafe-3b29bd65ef09/6Bl7NdyK9N.json",
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Dapatkan inspirasi menuju kreatifitas tanpa batas",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
