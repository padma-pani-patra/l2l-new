import 'package:meta/meta.dart';

class Lesson {
  final String imageUrl;
  final String title;
  final String author;
  final String date;

  Lesson({
    @required this.imageUrl,
    @required this.title,
    @required this.author,
    @required this.date,
  });
}
