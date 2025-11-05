import 'package:flutter/material.dart';

class searchBar extends StatelessWidget {
  const searchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            icon: Icon(Icons.search, size: 35),
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.5),
      ),
    );
  }
}


