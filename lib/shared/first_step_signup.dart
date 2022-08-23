import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pearogram/shared/app_text_field.dart';

class FirstStepSignup extends StatelessWidget {
  const FirstStepSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var phoneController = TextEditingController();
    var usernameController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmPasswordController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 8).r,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppTextField(
              hint: 'Telephone',
              validatorText: 'Please enter your phone number',
              controller: phoneController),
          SizedBox(height: 8.h,),
          AppTextField(
              hint: 'Username',
              validatorText: 'Please enter username',
              controller: usernameController),
          SizedBox(height: 8.h,),
          AppTextField(
              hint: 'Password',
              secure: true,
              validatorText: 'Please enter your password',
              controller: passwordController),
          SizedBox(height: 8.h,),
          AppTextField(
              secure: true,
              hint: 'Confirm password',
              validatorText: 'this field is must',
              controller: confirmPasswordController),
        ],
      ),
    );
  }
}
