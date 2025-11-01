import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  final IconData icon;
  final Color warna;
  final String textDalam;
  const Activities({
    Key? key,
    required this.icon,
    required this.textDalam,
    required this.warna,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 165,
          height: 120,
          decoration: BoxDecoration(
            color: warna,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 1.5),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(icon),
                  ),
                ),
                Text(
                  textDalam,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
