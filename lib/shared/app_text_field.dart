import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pearogram/presentation/constants/font_manager.dart';
import 'package:pearogram/presentation/constants/style_manager.dart';

import '../../presentation/constants/color_manager.dart';
import '../presentation/constants/values_manager.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final String validatorText;
  TextInputType inputType;
  bool secure;
  AppTextField({Key? key,this.secure=false, required this.hint, required this.validatorText, required this.controller,  this.inputType= TextInputType.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secure,
      keyboardType: inputType,
      decoration: InputDecoration(
        contentPadding:const EdgeInsets.all(AppPadding.p8).r,
          hintText: hint,
          hintStyle: getRegularStyle(color: AppColor.hintFontColor ,fontSize: FontSize.s14.sp),
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
