import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pearogram/presentation/constants/color_manager.dart';
import 'package:pearogram/presentation/constants/font_manager.dart';
import 'package:pearogram/shared/details_headlines_widget.dart';
import 'package:pearogram/shared/play_widget.dart';

import '../presentation/constants/style_manager.dart';

class LessonContainerWidget extends StatelessWidget {
  const LessonContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      height: 80.h,
      child: FittedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PlayWidget(
                iconColor: AppColor.white, containerColor: AppColor.primaryColor),
            SizedBox(width: 20.w,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DetailsHeadLinesWidget(
                  title: '01. Introduction',
                  fontSize: FontSize.s18,
                  postSizedHeight: 0,
                  preSizedHeight: 0,
                ),
                Text(
                  'Mentor: Ahmed selem',
                  style: getMediumStyle(
                      color: Colors.black54, fontSize: FontSize.s14),
                ),
                Row(
                  children: [
                    Container(
                      color: AppColor.primaryColor,
                      height: 2,
                      width: 300,
                    ),
                    SizedBox(width: 10.w,),
                    Text(
                      '5:12',
                      style: getMediumStyle(
                          color: Colors.black54, fontSize: FontSize.s14),
                    ),

                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
