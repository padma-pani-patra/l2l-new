import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final int activeIndex;
  final Function onTap;

  const NavBar({Key key, @required this.activeIndex, @required this.onTap})
      : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 73,
      child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: widget.activeIndex,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                height: 30,
                width: 30,
                child: Image.asset(
                  'assets/icons/Group_526.png',
                  height: 27,
                  width: 29,
                ),
              ),
              label: "L2L Wall",
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 45,
                width: 45,
                child: Image.asset(
                  'assets/icons/Group 532.png',
                  height: 23.2,
                  width: 23.2,
                ),
              ),
              label: "My Lesson",
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 30,
                width: 30,
                child: Image.asset(
                  'assets/icons/Group 530.png',
                  height: 27,
                  width: 29,
                ),
              ),
              label: "L2L Feed",
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 30,
                width: 30,
                child: Image.asset(
                  'assets/icons/Group 528.png',
                  height: 27,
                  width: 29,
                ),
              ),
              label: "My Lessons",
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 30,
                width: 30,
                child: Image.asset(
                  'assets/icons/Group 529.png',
                  height: 27,
                  width: 29,
                ),
              ),
              label: "My Account",
            )
          ],
          onTap: widget.onTap),
    );
  }
}
