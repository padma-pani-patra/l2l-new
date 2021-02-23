import 'package:add_lesson_1/data/palette.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final double height;
  final double width;

  const AppBarWidget({Key key, @required this.height, @required this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.087,
      color: Palette.appbar,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: width * 0.023, right: width * 0.037),
            width: width * 0.272,
            child: Image.asset(
              "assets/icons/Rectangle 271.png",
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 15, bottom: 16),
            width: width * 0.575,
            decoration: BoxDecoration(
                color: Palette.containerColor,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Color(0xFF707070)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Palette.background,
                      hintText: "Enter URL",
                      hintStyle: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 16,
                      ),
                      suffixIcon: Image.asset(
                        'assets/icons/Icon_feather_search.png',
                      ),
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Container(
                    height: 22,
                    width: 22,
                    child: Image.asset(
                      'assets/icons/Icon feather-filter.png',
                      height: 12.5,
                      width: 13.8,
                      // color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 10, top: 15, right: 9, bottom: 16),
            width: width * 0.153,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/icons/Icon ionic-ios-notifications-outline.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
