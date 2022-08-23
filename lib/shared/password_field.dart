import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pearogram/presentation/constants/font_manager.dart';
import 'package:pearogram/presentation/constants/style_manager.dart';

import '../../presentation/constants/color_manager.dart';
import '../presentation/constants/values_manager.dart';

class PasswordField extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  final String validatorText;
  TextInputType inputType;
  bool secure;
  PasswordField({Key? key,this.secure= true, required this.hint, required this.validatorText, required this.controller,  this.inputType= TextInputType.text}) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.secure,
      keyboardType: widget.inputType,
      decoration: InputDecoration(

          suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              widget.secure
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: AppColor.hintFontColor,
            ),
            onPressed: () {
              // Update the state i.e. toogle the state of passwordVisible variable
              setState(() {
                widget.secure = !widget.secure;
              });
            },),
          contentPadding:const EdgeInsets.all(AppPadding.p8).r,
          hintText: widget.hint,
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
          return widget.validatorText;
        }
        return null;
      },
      controller: widget.controller,
    );
  }
}
