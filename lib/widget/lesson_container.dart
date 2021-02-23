import 'package:add_lesson_1/data/palette.dart';
import 'package:add_lesson_1/model/lesson.dart';
import 'package:flutter/material.dart';

class LessonContainer extends StatelessWidget {
  final Lesson lesson;
  final double height;
  final double width;

  const LessonContainer(
      {Key key,
      @required this.lesson,
      @required this.height,
      @required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.5, horizontal: 10),
      child: Container(
        padding: EdgeInsets.fromLTRB(14, 14, 0, 14),
        height: height * 0.229,
        width: 333,
        color: Palette.containerColor,
        child: Row(
          children: [
            Container(
              width: 92,
              height: 147,
              child: Stack(children: [
                Image.asset(
                  'assets/images/cat.jpeg',
                ),
                Positioned(
                  bottom: 5,
                  right: 20,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          child: Image.asset(
                            'assets/icons/Group_425.png',
                            height: 17,
                            width: 9,
                          ),
                        ),
                        Text(
                          "25",
                          style:
                              TextStyle(fontSize: 7, color: Color(0xFF2493a2)),
                        )
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lesson.title,
                    style: TextStyle(color: Color(0xFF0a0000), fontSize: 17),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    lesson.author,
                    style: TextStyle(color: Color(0xFF707070), fontSize: 15),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    lesson.date,
                    style: TextStyle(color: Color(0xFF707070), fontSize: 12),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Text(
                        'Share',
                        style: TextStyle(
                          color: Color(0xFF707070),
                          fontSize: 15,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: Container(
                          height: 23,
                          width: 59,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFd6b252),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "L2L Wall",
                            style: TextStyle(
                                color: Color(0xFFd6b252), fontSize: 9),
                          ),
                        ),
                      ),
                      Container(
                        height: 18,
                        width: 18,
                        child: Image.asset(
                          'assets/icons/Icon_awesome_whatsapp.png',
                          height: 17,
                          width: 9,
                        ),
                      ),
                      SizedBox(
                        width: 12.3,
                      ),
                      Container(
                        height: 18.1,
                        width: 9.7,
                        child: Image.asset(
                          'assets/icons/Icon_awesome_facebook_f.png',
                          height: 17,
                          width: 9,
                        ),
                        // color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
