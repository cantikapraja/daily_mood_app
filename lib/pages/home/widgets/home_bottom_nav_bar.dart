import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

final List<String> iconsPath = [
  "assets/icons/home.png",
  "assets/icons/open-book.png",
  "assets/icons/bar-chart.png",
  "assets/icons/setting.png",
];

int selectedIndex = 0;

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      margin: const EdgeInsets.only(right: 24, left: 24, bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: iconsPath.map((Path) {
            int index = iconsPath.indexOf(Path);
            bool isSelected = selectedIndex == index;
            return Material(
              color: Colors.transparent,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: 58,
                      width: 58,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isSelected ? Colors.black : Colors.white,
                      ),
                    ),
                    Image.asset(
                      Path,
                      height: 20,
                      width: 20,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
