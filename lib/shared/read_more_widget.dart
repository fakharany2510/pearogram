import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../presentation/constants/color_manager.dart';
import '../presentation/constants/font_manager.dart';
import '../presentation/constants/style_manager.dart';

class ReadMoreWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  const ReadMoreWidget({Key? key, required this.text,  this.fontSize= FontSize.s17}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: 3,
      style:
      getMediumStyle(color: Colors.black54, fontSize:fontSize.sp),
      colorClickableText: AppColor.primaryColor,
      trimMode: TrimMode.Line,
      trimCollapsedText: '...Show more',
      trimExpandedText: ' show less',
    );
  }
}
