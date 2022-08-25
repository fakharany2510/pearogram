import 'package:flutter/material.dart';
import 'package:pearogram/shared/read_more_widget.dart';

import '../presentation/constants/font_manager.dart';
import 'details_headlines_widget.dart';

class InstructorInfoWidget extends StatelessWidget {
  final String title;
  final String info;
  final double infoFontSize;
  final double postSize;

  const InstructorInfoWidget(
      {Key? key,
      this.title = 'About me',
      this.info =
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
      this.infoFontSize = FontSize.s17, this.postSize=15})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailsHeadLinesWidget(
          title: title,
          postSizedHeight: postSize,
        ),
        ReadMoreWidget(
          text: info,
          fontSize: infoFontSize,
        ),
      ],
    );
  }
}
