import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:pearogram/shared/default_button.dart';

import '../../shared/app_text_field.dart';
import '../constants/color_manager.dart';
import '../constants/font_manager.dart';
import '../constants/style_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,leading:const Icon(Icons.arrow_back,color: Colors.black,),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0,right: 50,bottom: 50).r,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Login in To Your Education Account',
                style: getBoldStyle(
                    color: Colors.black, fontSize: FontSize.s16.sp),
              ),
              SizedBox(height: 50.h,),
            SizedBox(
            height: 50.h,
            width:300.w,
            child: SignInButton(
                Buttons.Google,
                text: "Sign up with Google",
                onPressed: () {},
              ),),
               SizedBox(height: 15.h,),
              SizedBox(
                height: 50.h,
                width:300.w,
                child: SignInButton(
                  Buttons.FacebookNew,
                  text: "Sign in with Facebook",
                  onPressed: () {},

                ),
              ),
              SizedBox(height: 30.h,),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(width: 150.w,height: 2,color: AppColor.hintFontColor,),
                    const Text('OR'),
                    Container(width: 150.w,height: 2,color: AppColor.hintFontColor,),
                  ],
                ),
              ),
              SizedBox(height: 30.h,),
              AppTextField(
                  hint: 'Username',
                  inputType: TextInputType.emailAddress,
                  validatorText: 'Please enter username',
                  controller: emailController),
              SizedBox(height: 15.h,),
              AppTextField(
                  hint: 'Password',
                  secure: true,
                  validatorText: 'Please enter your password',
                  controller: passwordController),
               SizedBox(height: 20.h,),
              DefaultButton(btnText: 'Login', press: (){},  width: 300.w,
                  height: 45.h, activeColor: AppColor.primaryColor),
              SizedBox(height: 15.h,),
               TextButton(onPressed: (){}, child:  Text('Forget Password?',style: getBoldStyle(fontSize: FontSize.s16,color: Colors.black54),)),
               SizedBox(height: 150.h,),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: [
                  Text("Don't have account?  ",style: getSemiBoldStyle(color: Colors.black54,fontSize: FontSize.s16,),),
                  InkWell(
                    child: Text(
                      'Register now!',
                      style: getSemiBoldStyle(
                          fontSize: FontSize.s16,
                          color:
                          AppColor.primaryColor),
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
