import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../presentation/constants/color_manager.dart';
import 'default_button.dart';
import 'lesson_container_widget.dart';

class LessonsTabWidget extends StatelessWidget {
  final Widget body;
  const LessonsTabWidget({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        body,
        Positioned(
          top: 195.h,
          left: 60.w,
          child: Column(
            children: [
              const Divider(
                thickness: 2,
                color: Colors.black,
              ),
              Center(
                child: DefaultButton(
                    btnText: 'Enroll now',
                    press: () {
                      Navigator.pop(context);
                    },
                    width: 250.w,
                    height: 45.h,
                    activeColor: AppColor.primaryColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
