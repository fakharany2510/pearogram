import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pearogram/presentation/constants/font_manager.dart';
import 'package:pearogram/presentation/constants/style_manager.dart';

import '../../presentation/constants/color_manager.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final String validatorText;

  const AppTextField({Key? key, required this.hint, required this.validatorText, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all( 5),
          hintText: hint,
          hintStyle: getRegularStyle(color: AppColor.hintFontColor ,fontSize: FontSize.s12.sp),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.w, color: AppColor.borderFieldDisabledColor),
            borderRadius: BorderRadius.circular(10).r,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:  BorderSide(width: 1.w, color: AppColor.primaryColor),
            borderRadius: BorderRadius.circular(10).r,
          )),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatorText;
        }
        return null;
      },
      controller: controller,
    );
  }
}
