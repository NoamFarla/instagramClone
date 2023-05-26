import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    Key? key,
    required this.avatarComponent,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  final Widget avatarComponent;
  final String title;
  final String imagePath;

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isLiked = false;
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                bottom: 15, left: 8, right: 8, top: 15),
            child: Row(
              children: [
                widget.avatarComponent,
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 400,
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 15, left: 8, right: 8, top: 15),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isLiked ? Colors.transparent : Colors.transparent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        isLiked
                            ? FontAwesomeIcons.solidHeart
                            : FontAwesomeIcons.heart,
                        color: isLiked ? Colors.red : Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Icon(FontAwesomeIcons.comment, color: Colors.white, size: 20),
                SizedBox(width: 10),
                Icon(
                  FontAwesomeIcons.paperPlane,
                  color: Colors.white,
                  size: 20,
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      isBookmarked = !isBookmarked;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isBookmarked ? Colors.transparent : Colors.transparent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
                        color: isBookmarked ? Colors.white : Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
