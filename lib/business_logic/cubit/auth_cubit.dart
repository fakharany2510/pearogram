import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../presentation/constants/color_manager.dart';
import '../../presentation/constants/font_manager.dart';
import '../../presentation/constants/style_manager.dart';
import 'auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitialState());

  static AuthCubit get(context) => BlocProvider.of(context);
  int index = 0;

  Step stepWidget(
      {required Widget content,
      required String title,
        required int stepNum,
      required int currentIndex}) {
    return Step(
      title: Text(
        title,
        style: getRegularStyle(
          color: AppColor.stepperTitleColor,
          fontSize: FontSize.s17.sp,
        ),
      ),
      content: content,
      isActive: currentIndex >= 0,
      state: currentIndex >= stepNum ? StepState.complete : StepState.disabled,
    );
  }

  void onStepCancel() {
    if (index > 0) {
      index -= 1;
      emit(AuthStepperCanceledState());
    }
  }

  void onStepContinue() {
    if (index <= 0) {
      index += 1;
      emit(AuthStepperContinuedState());
    }
  }

  void onTapStepper(int tapIndex) {
    index = tapIndex;
    emit(AuthStepperContinuedState());
  }
}
