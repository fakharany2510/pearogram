import 'package:flutter/material.dart';

import 'lesson_container_widget.dart';

class LessonList extends StatelessWidget {
  const LessonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205,
      child: ListView.builder(
          itemBuilder: (_, index) =>
          const LessonContainerWidget(),
          itemCount: 8),
    );
  }
}
