import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pearogram/presentation/screens/instrucor_lessons_screen.dart';
import 'package:pearogram/presentation/screens/on_boarding.dart';
import 'package:pearogram/presentation/screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(411.4, 820.6),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              theme: ThemeData(), debugShowCheckedModeBanner: false, home: child);
        },
        child: const OnBoardingScreen(),
    );
  }
}
