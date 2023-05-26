// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;

  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTabTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromARGB(255, 30, 33, 38),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            iconSize: 28,
            color: currentIndex == 0 ? Colors.white : Colors.grey,
            onPressed: () => onTabTapped(0),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 28,
            color: currentIndex == 1 ? Colors.white : Colors.grey,
            onPressed: () => onTabTapped(1),
          ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.plusSquare),
            iconSize: 25,
            color: currentIndex == 2 ? Colors.white : Colors.grey,
            onPressed: () => onTabTapped(2),
          ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.instagram),
            iconSize: 25,
            color: currentIndex == 3 ? Colors.white : Colors.grey,
            onPressed: () => onTabTapped(3),
          ),
          InkWell(
            onTap: () => onTabTapped(4),
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/story_avatar.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
