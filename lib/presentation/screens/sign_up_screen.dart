import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pearogram/business_logic/cubit/auth_cubit.dart';
import 'package:pearogram/presentation/screens/login_screen.dart';
import 'package:pearogram/shared/default_button.dart';
import 'package:pearogram/shared/first_step_after_btn.dart';
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              DefaultButton(
                                press: () {

                                  if (cubit.index == 1) {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          color:
                                              Colors.transparent.withAlpha(1),
                                          height: 400.h,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 250,
                                                child: Image.asset(
                                                  'assets/images/bottomsheet.png',
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              const Text(
                                                '''Thanks For providing your Info Welcome
to our educational world, your success 
is our Goal .''',
                                                textAlign: TextAlign.center,
                                              ),
                                              DefaultButton(
                                                  btnText: 'Done',
                                                  press: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const LoginScreen()));
                                                  },
                                                  width: 300.w,
                                                  height: 45.h,
                                                  activeColor:
                                                      AppColor.primaryColor),
                                            ],
                                          ),
                                        );

                                      },
                                    );
                                  }
                                  cubit.onStepContinue();
                                },
                                btnText: cubit.index == 0 ? 'Next' : "Finish!",
                                activeColor: AppColor.primaryColor,
                                width: 300.w,
                                height: 45.h,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              cubit.index == 0
                                  ? const FirstStepAfterBtn()
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
