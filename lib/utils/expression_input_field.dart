import 'package:flutter/material.dart';

class WriteExpression extends StatelessWidget {
  const WriteExpression({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.black, width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text("Ini Contoh dari teksnya", style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
