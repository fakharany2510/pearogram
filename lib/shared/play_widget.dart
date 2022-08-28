import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayWidget extends StatelessWidget {
  final Color iconColor;
  final double shadow;
  final double height;
  final double radius;
  final IconData icon;
  final Color containerColor;

  const PlayWidget(
      {Key? key,
      required this.iconColor,
      required this.containerColor,
      this.shadow = 2,
      this.height = 60,
      this.radius = 44,
        this.icon=Icons.play_arrow_outlined})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height.w,
      height: height.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: shadow,
            spreadRadius: 0.0,
            offset: Offset(shadow, shadow), // shadow direction: bottom right
          )
        ],
        color: containerColor,
        borderRadius: const BorderRadius.all(Radius.circular(30)).r,
      ),
      child: Icon(icon, color: iconColor, size: radius.r),
    );
  }
}
