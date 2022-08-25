import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pearogram/shared/course_container_widget.dart';
import 'package:pearogram/shared/details_headlines_widget.dart';
import 'package:readmore/readmore.dart';
import '../../presentation/constants/font_manager.dart';
import '../../presentation/constants/style_manager.dart';
import '../../presentation/constants/values_manager.dart';
import '../../shared/column_with_textes_widget.dart';
import '../../shared/instructor_widget.dart';
import '../constants/color_manager.dart';

class InstructorDetails extends StatelessWidget {
  const InstructorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instructor',
          style:
              getRegularStyle(color: Colors.black, fontSize: FontSize.s16.sp),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p25).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const InstructorWidget(),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                const ColumnWithTextWidget(
                    title: 'Total students', num: '874,487'),
                SizedBox(
                  width: 25.w,
                ),
                const ColumnWithTextWidget(title: 'Reviews', num: '120,021'),
              ],
            ),
            const DetailsHeadLinesWidget(title: 'About me'),
            ReadMoreText(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
              trimLines: 4,
              style:
                  getMediumStyle(color: Colors.black54, fontSize: FontSize.s17),
              colorClickableText: AppColor.primaryColor,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...Show more',
              trimExpandedText: ' show less',
            ),
            const DetailsHeadLinesWidget(
                title: 'My Courses (8)', preSizedHeight: 30),
            Expanded(
              child: SizedBox(
                height: 280.h,
                child:ListView.builder(
                itemBuilder: (_, index) => const CourseContainerWidget(),
                itemCount: 8,
              ),),
            )
          ],
        ),
      ),
    );
  }
}
