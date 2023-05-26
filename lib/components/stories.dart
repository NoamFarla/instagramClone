import 'package:flutter/material.dart';

class AvatarComponent extends StatelessWidget {
  const AvatarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 13.5),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/story_avatar.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
