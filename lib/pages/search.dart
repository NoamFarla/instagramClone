// ignore_for_file: library_private_types_in_public_api, prefer_final_fields

import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  ScrollController _scrollController = ScrollController();
  bool _showAppBar = true;
  double _scrollPosition = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _scrollPosition = _scrollController.position.pixels;
        if (_scrollPosition > 0 && _scrollPosition > _scrollController.position.minScrollExtent) {
          _showAppBar = _scrollPosition <= _scrollController.position.maxScrollExtent;
        } else {
          _showAppBar = true;
        }
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            title: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 60, 65, 80),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search, color: Colors.grey,size: 22,),
                  ),
                  Expanded(
                    child: Text(
                      'Search',
                      style: TextStyle(color: Colors.grey,fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            floating: true,
            pinned: true,
            snap: true,
            collapsedHeight: kToolbarHeight,
            toolbarHeight: _showAppBar ? kToolbarHeight : 0,
          ),
          SliverFillRemaining(
            child: Container(
              color: Theme.of(context).appBarTheme.backgroundColor,
              child: GridView.count(
                crossAxisCount: 3,
                padding: const EdgeInsets.only(left: 2.0,right: 2.0,top: 5,bottom: 10),
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
                children: [
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                  Image.asset('assets/images/story_avatar.jpeg'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}