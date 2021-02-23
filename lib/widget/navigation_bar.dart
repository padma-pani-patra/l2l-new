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
                height: widget.activeIndex == 0 ? 45 : 30,
                width: widget.activeIndex == 0 ? 45 : 30,
                child: widget.activeIndex == 0
                    ? Image.asset(
                        'assets/icons/Group 533.png',
                        height: 27,
                        width: 29,
                      )
                    : Image.asset(
                        'assets/icons/Group_526.png',
                        height: 27,
                        width: 29,
                      ),
              ),
              label: "L2L Wall",
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: widget.activeIndex == 1 ? 45 : 30,
                width: widget.activeIndex == 1 ? 45 : 30,
                child: widget.activeIndex == 1
                    ? Image.asset(
                        'assets/icons/Group 532.png',
                        height: 27,
                        width: 29,
                      )
                    : Image.asset(
                        'assets/icons/Group 527.png',
                        height: 27,
                        width: 27,
                      ),
              ),
              label: "My Lesson",
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: widget.activeIndex == 2 ? 45 : 30,
                width: widget.activeIndex == 2 ? 45 : 30,
                child: widget.activeIndex == 2
                    ? Image.asset(
                        'assets/icons/Group 531.png',
                        height: 27,
                        width: 29,
                      )
                    : Image.asset(
                        'assets/icons/Group 530.png',
                        height: 27,
                        width: 29,
                      ),
              ),
              label: "L2L Feed",
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: widget.activeIndex == 3 ? 45 : 30,
                width: widget.activeIndex == 3 ? 45 : 30,
                child: widget.activeIndex == 3
                    ? Image.asset(
                        'assets/icons/Group 534.png',
                        height: 27,
                        width: 29,
                      )
                    : Image.asset(
                        'assets/icons/Group 528.png',
                        height: 27,
                        width: 29,
                      ),
              ),
              label: "My Lessons",
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: widget.activeIndex == 4 ? 45 : 30,
                width: widget.activeIndex == 4 ? 45 : 30,
                child: widget.activeIndex == 4
                    ? Image.asset(
                        'assets/icons/Group 535.png',
                        height: 27,
                        width: 29,
                      )
                    : Image.asset(
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
