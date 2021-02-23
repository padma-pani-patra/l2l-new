import 'package:add_lesson_1/data/data.dart';
import 'package:add_lesson_1/data/palette.dart';
import 'package:add_lesson_1/widget/widget.dart';
import 'package:flutter/material.dart';

class MyLesson extends StatefulWidget {
  @override
  _MyLessonState createState() => _MyLessonState();
}

class _MyLessonState extends State<MyLesson> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: AppBarWidget(height: height, width: width),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(11, 20, 0, 20),
            sliver: SliverToBoxAdapter(
              child: Container(
                  child: Row(
                children: [
                  Container(
                    height: 31,
                    width: 31,
                    decoration: BoxDecoration(
                        color: Palette.messageIcon, shape: BoxShape.circle),
                    child: Image.asset(
                      'assets/icons/Icon material-library-books.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "My Lessons",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
            sliver: SliverToBoxAdapter(
              child: TextField(
                style: TextStyle(color: Color(0xFF707070)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Palette.containerColor,
                  hintText: "Search in my lessons",
                  hintStyle: TextStyle(
                    color: Color(0xFF707070),
                    fontSize: 16,
                  ),
                  suffixIcon: Image.asset(
                    'assets/icons/Icon_feather_search.png',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Palette.containerColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return LessonContainer(
                  lesson: lessons[index],
                  height: height,
                  width: width,
                );
              },
              childCount: lessons.length,
              semanticIndexOffset: 2,
            ),
          )
        ],
      ),
    );
  }
}
