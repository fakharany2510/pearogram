import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../presentation/constants/color_manager.dart';
import '../presentation/constants/style_manager.dart';

class FirstStepAfterBtn extends StatelessWidget {
  const FirstStepAfterBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment:
      CrossAxisAlignment.center,
      children: [
        FittedBox(
          child: Row(
            children: [
              const Text(
                  'By signing up, you agree to our'),
              InkWell(
                child: Text(
                  'Terms of Service',
                  style: getRegularStyle(
                      color:
                      AppColor.primaryColor),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.h,),
        Row(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: [
            const Text('and'),
            InkWell(
              child: Text(
                'Privacy Policy',
                style: getRegularStyle(
                    color:
                    AppColor.primaryColor),
              ),
            )
          ],
        ),
        SizedBox(height: 200.h,),
        Row(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: [
            const Text('Already have account? '),
            InkWell(
              child: Text(
                'Login now!',
                style: getRegularStyle(
                    color:
                    AppColor.primaryColor),
              ),
            )
          ],
        ),
      ],
    );
  }
}
