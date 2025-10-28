import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(35),
        color: Colors.deepOrange[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Cari teman dan \n bangun relasi",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            Lottie.network(
              "https://lottie.host/f4951156-547e-4a37-926c-f19d76f2fc08/uuZcPLVMMD.json",
            ),
            Text(
              "menjadi penulis inspiratif dan komunikatif",
              style: TextStyle(
                fontSize: 15,
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
