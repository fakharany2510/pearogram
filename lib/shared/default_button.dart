import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../presentation/constants/color_manager.dart';
import '../presentation/constants/font_manager.dart';
import '../presentation/constants/style_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DefaultButton extends StatelessWidget {
  final String btnText;
  final double height;
  final Function press;
  final double width;
  bool enable;
  final Color activeColor;
  DefaultButton(
      {Key? key,
        this.enable=true,
        required this.btnText,
        required this.press,
        required this.height,
        required this.width, required this.activeColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: activeColor,
          fixedSize: Size(width.w, height.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0.r),
          ),
        ),
        onPressed: ()=> enable? press(): null,
        child: Text(
          btnText,
          style: getBoldStyle(fontSize: FontSize.s16.sp ,color: AppColor.white),
        ));
  }
}
