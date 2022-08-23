import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pearogram/shared/app_text_field.dart';

class FirstStepSignup extends StatelessWidget {
  const FirstStepSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var phoneController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppTextField(
              hint: 'Telephone',
              validatorText: 'Please enter your phone number',
              controller: phoneController),
          SizedBox(height: 8.h,),
          AppTextField(
              hint: 'Telephone',
              validatorText: 'Please enter your phone number',
              controller: phoneController),
          SizedBox(height: 8.h,),
          AppTextField(
              hint: 'Telephone',
              validatorText: 'Please enter your phone number',
              controller: phoneController),
          SizedBox(height: 8.h,),
          AppTextField(
              hint: 'Telephone',
              validatorText: 'Please enter your phone number',
              controller: phoneController),
          SizedBox(height: 8.h,),
          AppTextField(
              hint: 'Telephone',
              validatorText: 'Please enter your phone number',
              controller: phoneController),
        ],
      ),
    );
  }
}
