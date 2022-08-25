import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pearogram/presentation/constants/font_manager.dart';

import '../presentation/constants/style_manager.dart';

class InstructorWidget extends StatelessWidget {
  const InstructorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CircleAvatar(radius: 50.r,backgroundImage:const AssetImage('assets/images/instructor.png'),),
      SizedBox(width: 10.h,),
      FittedBox(
        child: SizedBox(
          width: 150,
          child: Column(children: [
            Text('Dr. Ahmed Selem ',style: getBoldStyle(color:Colors.black,fontSize: FontSize.s17),),
            SizedBox(height: 5.h,),
            Text('Developer and Lead Instructor',style: getMediumStyle(color: Colors.black54,fontSize: FontSize.s14),)
          ],),
        ),
      )
    ],);
  }
}
