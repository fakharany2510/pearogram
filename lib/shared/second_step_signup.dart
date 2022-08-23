import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_text_field.dart';

class SecondStepSignup extends StatelessWidget {
  const SecondStepSignup({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var fullName = TextEditingController();
    var emailController = TextEditingController();
    var parentPhoneController = TextEditingController();
    var primaryController = TextEditingController();
    var schoolController = TextEditingController();
    var firstPrimaryController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 8).r,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppTextField(
              hint: 'Full Name',
              validatorText: 'Please enter your full name',
              controller: fullName),
          SizedBox(height: 8.h,),
          AppTextField(
              hint: 'Email',
              inputType: TextInputType.emailAddress,
              validatorText: 'Please enter your email',
              controller: emailController),
          SizedBox(height: 8.h,),
          AppTextField(
              hint: 'School/Faculty Name',
              secure: true,
              validatorText: 'Please enter your School/Faculty Name',
              controller: schoolController),
          SizedBox(height: 8.h,),
          AppTextField(
              secure: true,
              inputType: TextInputType.phone,
              hint: 'Parent Phone',
              validatorText: 'Please enter your parent phone',
              controller: parentPhoneController),
          SizedBox(height: 8.h,),
          AppTextField(
              hint: 'Primary',
              secure: true,
              validatorText: 'This field is must !',
              controller: primaryController),
          SizedBox(height: 8.h,),
          AppTextField(
              hint: 'First Primary',
              secure: true,
              validatorText: 'This field is must !',
              controller: firstPrimaryController),
          SizedBox(height: 8.h,),
        ],
      ),
    );
  }
}
