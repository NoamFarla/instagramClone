import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  final int index;

  const AddPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New post',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {},
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Next',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * 1,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                color: Colors.black,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Image.asset('assets/images/story_avatar.jpeg'),
                  ), // Replace with your image or video widget
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).appBarTheme.backgroundColor,
              child: GridView.builder(
                padding: const EdgeInsets.all(4.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
                itemCount: 40, // Replace with your actual gallery item count
                itemBuilder: (context, index) {
                  return ClipRRect(
                    child: Image.asset(
                      'assets/images/story_avatar.jpeg', // Replace with your gallery item URL
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
