import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/components/bottom_nav.dart';
import 'package:instagram_clone/pages/home.dart';
import 'package:instagram_clone/pages/search.dart';
import 'package:instagram_clone/pages/add.dart';
import 'package:instagram_clone/pages/reels.dart';
import 'package:instagram_clone/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 30, 33, 38),
        ),
      ),
      home: const MyHomePage(
        title: Image(image: AssetImage('assets/images/logo.png'), width: 100),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final Widget title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.title,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(MdiIcons.heartOutline),
            iconSize: 25,
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.paperPlane),
            iconSize: 20,
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      body: _buildPageContent(),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTabTapped: _onTabTapped,
      ),
    );
  }

  Widget _buildPageContent() {
    switch (_currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const SearchPage();
      case 2:
        return AddPage(index: _currentIndex); // Pass the current index to AddPage
      case 3:
        return const ReelsPage();
      case 4:
        return const ProfilePage();
      default:
        return Container();
    }
  }
}
