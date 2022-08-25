import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../presentation/constants/font_manager.dart';
import '../presentation/constants/style_manager.dart';

class DetailsHeadLinesWidget extends StatelessWidget {
  final double preSizedHeight;
  final double postSizedHeight;
  final String title;
  const DetailsHeadLinesWidget({Key? key,  this.preSizedHeight=15, required this.title, this.postSizedHeight=15}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: preSizedHeight.h,),
      Text(title,style: getBoldStyle(color:Colors.black,fontSize: FontSize.s20.sp),),
      SizedBox(height: postSizedHeight.h,),
    ],);
  }
}
