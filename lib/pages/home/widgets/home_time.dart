import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  final String dateTime;
  final VoidCallback onTap;
  final bool isSelected;

  const Time({
    Key? key,
    required this.dateTime,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: isSelected
              ? Border.all(color: Colors.black, width: 1.5)
              : null,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          dateTime,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ),
    );
  }
}
