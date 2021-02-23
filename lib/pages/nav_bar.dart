import 'pages.dart';

import '../data/palette.dart';
import '../widget/navigation_bar.dart';
import 'package:flutter/material.dart';

class AddLessonOne extends StatefulWidget {
  @override
  _AddLessonOneState createState() => _AddLessonOneState();
}

class _AddLessonOneState extends State<AddLessonOne> {
  final List<Widget> _screens = [
    L2LWall(),
    MyLesson(),
    L2LFeed(),
    MyLesson2(),
    MyAccount(),
  ];

  void _onTap(index) {
    setState(() {
      activeIndex = index;
    });
  }

  int activeIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      body: _screens[activeIndex],
      bottomNavigationBar: NavBar(
        activeIndex: activeIndex,
        onTap: _onTap,
      ),
    );
  }
}
