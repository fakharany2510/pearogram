import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../presentation/constants/font_manager.dart';

import '../presentation/constants/style_manager.dart';

class InstructorWidget extends StatelessWidget {
  final double radius;
  final String title;
  final String subTitle;
  const InstructorWidget({Key? key,  this.radius=50,  this.title='Dr. Ahmed Selem ',  this.subTitle='Developer and Lead Instructor'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CircleAvatar(radius: radius.r,backgroundImage:const AssetImage('assets/images/instructor.png'),),
      SizedBox(width: 10.h,),
      FittedBox(
        child: SizedBox(
          width: 150.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(title,style: getBoldStyle(color:Colors.black,fontSize: FontSize.s17),),
            SizedBox(height: 5.h,),
            Text(subTitle,style: getMediumStyle(color: Colors.black54,fontSize: FontSize.s14),)
          ],),
        ),
      )
    ],);
  }
}
