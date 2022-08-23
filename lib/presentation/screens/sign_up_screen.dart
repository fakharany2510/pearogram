import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pearogram/business_logic/cubit/auth_cubit.dart';
import 'package:pearogram/shared/default_button.dart';
import 'package:pearogram/shared/first_step_signup.dart';
import 'package:pearogram/shared/second_step_signup.dart';
import '../../business_logic/cubit/auth_states.dart';
import '../constants/font_manager.dart';
import '../constants/style_manager.dart';
import '../constants/values_manager.dart';
import '../constants/color_manager.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AuthCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Padding(
              padding: const EdgeInsets.all(AppPadding.p25).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sign up as Student',
                    style: getBoldStyle(
                        color: Colors.black, fontSize: FontSize.s16.sp),
                  ),
                  Expanded(
                    child: Theme(
                      data: ThemeData(
                        colorScheme: Theme.of(context).colorScheme.copyWith(
                              primary: AppColor.primaryColor,
                              background: AppColor.hintFontColor,
                              secondary: AppColor.hintFontColor,
                            ),
                      ),
                      child: Stepper(
                        controlsBuilder: (context, _) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              DefaultButton(
                                press: () {
                                  cubit.onStepContinue();
                                },
                                btnText: cubit.index == 0 ? 'Next' : "Finish!",
                                activeColor: AppColor.primaryColor,
                                width: 300.w,
                                height: 45.h,
                              ),
                              cubit.index == 0
                                  ? Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                          children: [
                                            const Text(
                                                'By signing up, you agree to our'),
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'Terms of Service',
                                                  style: getRegularStyle(
                                                      color: AppColor.primaryColor),
                                                )),
                                          ],
                                        ),Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                                'and'),
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'Privacy Policy',
                                                  style: getRegularStyle(
                                                      color: AppColor.primaryColor),
                                                )),
                                          ],
                                        ),
                                    ],
                                  )
                                  : const SizedBox(),
                            ],
                          );
                        },
                        elevation: 0,
                        type: StepperType.horizontal,
                        currentStep: cubit.index,
                        onStepCancel: () {
                          cubit.onStepCancel();
                        },
                        onStepContinue: () {
                          cubit.onStepContinue();
                        },
                        onStepTapped: (int index) {
                          cubit.onTapStepper(index);
                        },
                        steps: <Step>[
                          cubit.stepWidget(
                              content: const FirstStepSignup(),
                              title: 'Phone number',
                              currentIndex: cubit.index,
                              stepNum: 0),
                          cubit.stepWidget(
                              content: const SecondStepSignup(),
                              title: 'Profile',
                              currentIndex: cubit.index,
                              stepNum: 1),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
