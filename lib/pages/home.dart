import 'package:flutter/material.dart';
import 'package:instagram_clone/components/stories.dart';
import 'package:instagram_clone/components/post.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AvatarComponent(),
              AvatarComponent(),
              AvatarComponent(),
              AvatarComponent(),
              AvatarComponent(),
            ],
          ),
          ListView(
            padding: const EdgeInsets.only(top: 20),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              CustomCard(
                avatarComponent: AvatarComponent(),
                title: 'John Doe',
                imagePath: 'assets/images/story_avatar.jpeg',
              ),
              CustomCard(
                avatarComponent: AvatarComponent(),
                title: 'John Doe',
                imagePath: 'assets/images/story_avatar.jpeg',
              ),
              CustomCard(
                avatarComponent: AvatarComponent(),
                title: 'John Doe',
                imagePath: 'assets/images/story_avatar.jpeg',
              ),
              CustomCard(
                avatarComponent: AvatarComponent(),
                title: 'John Doe',
                imagePath: 'assets/images/story_avatar.jpeg',
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Center(
                  child: Text('you\'ve reached the end.',
                  style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400
                  ),
                ),
              ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
