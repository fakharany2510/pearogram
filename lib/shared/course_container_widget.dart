import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../presentation/constants/font_manager.dart';
import '../presentation/constants/style_manager.dart';


class CourseContainerWidget extends StatelessWidget {
  final String instructor;
  final String title;
  const CourseContainerWidget({Key? key, this.instructor='', this.title='Selling Skills'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          SizedBox(
            height: 120.h,
            child: Image.asset(
              'assets/images/03.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          FittedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  instructor,
                  style: getMediumStyle(
                      color: Colors.black45, fontSize: FontSize.s14),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  title,
                  style:
                      getBoldStyle(color: Colors.black, fontSize: FontSize.s17),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                    width: 220.w,
                    child: Text(
                      'Supply Chain management test course for you',
                      style: getMediumStyle(
                          color: Colors.black54, fontSize: FontSize.s17),
                    )),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: Colors.black38,
                      size: 15.r,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      '24 Hours',
                      style: getMediumStyle(
                          color: Colors.black54, fontSize: FontSize.s17),
                    ),
                  ],
                ),
                SizedBox(height: 15.h,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
