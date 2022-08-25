import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../presentation/constants/font_manager.dart';
import '../presentation/constants/style_manager.dart';

class ColumnWithTextWidget extends StatelessWidget {
  final String title;
  final String num;
  const ColumnWithTextWidget({Key? key, required this.title, required this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: getMediumStyle(color: Colors.black54,fontSize: FontSize.s13.sp),),
        SizedBox(height: 2.h,),
        Text(num,style: getBoldStyle(color:Colors.black,fontSize: FontSize.s17.sp),),
      ],);
  }
}
