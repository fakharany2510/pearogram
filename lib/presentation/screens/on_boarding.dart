import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pearogram/presentation/constants/color_manager.dart';
import 'package:pearogram/presentation/constants/font_manager.dart';
import 'package:pearogram/presentation/constants/style_manager.dart';
import 'package:pearogram/presentation/constants/values_manager.dart';
import 'package:pearogram/presentation/screens/sign_up_screen.dart';
import 'package:pearogram/shared/default_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:hexcolor/hexcolor.dart';

class OnBoardingModel {
  final String image;
  final String titleText;
  final String bodyText;

  OnBoardingModel({
    required this.image,
    required this.titleText,
    required this.bodyText,
  });
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool isLast = false;
  var pageController = PageController();
  String buttonText = 'Next';
  List<OnBoardingModel> onBoard = [
    OnBoardingModel(
      image: 'assets/images/onboarding.png',
      bodyText: 'Forget about a far of paper all knowledge in one learning !',
      titleText: 'First See Learning',
    ),
    OnBoardingModel(
      image: 'assets/images/onboarding.png',
      bodyText:
          'Always Keep in touch with your tutor & friends. let\'s get connected!',
      titleText: 'Connect with Everyone',
    ),
    OnBoardingModel(
      image: 'assets/images/onboarding.png',
      bodyText:
          'Always Keep in touch with your tutor & friends. let\'s get connected!',
      titleText: 'Always Fascinated Learning',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: 520.h,
              width: double.infinity,
              child: PageView.builder(
                controller: pageController,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (int index) {
                  if (index == onBoard.length - 1) {
                    setState(() {
                      isLast = true;
                      buttonText = 'Get Started';
                      print(' Last');
                    });
                  } else {
                    setState(() {
                      isLast = false;
                      print('not Last');
                    });
                  }
                },
                itemBuilder: (context, index) => buildScreenItem(onBoard[index]),
                itemCount: onBoard.length,
              )),
          SizedBox(
            height: 30.h,
          ),
          Column(
            children: [
              SmoothPageIndicator(
                  controller: pageController,
                  count: onBoard.length,
                  effect: ExpandingDotsEffect(
                    dotColor: AppColor.hintFontColor,
                    activeDotColor: AppColor.primaryColor,
                    dotHeight: 10,
                    expansionFactor: 4,
                    dotWidth: 15,
                    spacing: 5,
                  )),
              SizedBox(
                height: 160.h,
              ),
              DefaultButton(
                press: () {
                  if (isLast == true) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>const SignUpScreen()));
                  } else {
                    pageController.nextPage(
                        duration: const Duration(
                          microseconds: 750,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn);
                  }
                },
                btnText: buttonText,
                activeColor: AppColor.primaryColor,
                width: 300.w,
                height: 45.h,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildScreenItem(OnBoardingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                    top: AppPadding.p64,
                    left: AppPadding.p16,
                    right: AppPadding.p29,
                    bottom: AppPadding.p19)
                .r,
            child: Image(
              image: AssetImage(model.image),
              width: 330.w,
              height: 323.h,
            ),
          ),
          Expanded(
            child: Text(model.titleText,
                textAlign: TextAlign.center,
                style: getBoldStyle(
                    fontSize: FontSize.s26.sp, color: Colors.black)),
          ),
          SizedBox(
            height: 15.h,
          ),
          Expanded(
            child: Text(model.bodyText,
                textAlign: TextAlign.center,
                style: getMediumStyle(
                    color: AppColor.hintFontColor, fontSize: FontSize.s16.sp)),
          ),
        ],
      );
}
