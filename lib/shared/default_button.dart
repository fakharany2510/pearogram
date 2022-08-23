import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pearogram/presentation/constants/color_manager.dart';
import 'package:pearogram/presentation/constants/font_manager.dart';

import '../presentation/constants/style_manager.dart';

Widget defaultButton({
  required double width,
  required double height,
  required Color buttonColor,
 // required Color textColor,
  required String buttonText,
  required VoidCallback function,
  double raduis = 25,
  //double fontSize=18,
})=>Container(

    height: height,
    width: width,
    decoration: BoxDecoration(
      color:buttonColor ,
      borderRadius: BorderRadius.circular(raduis),
    ),
    child:TextButton(
      onPressed:function,
      child:  Text('${buttonText}',
        style:getRegularStyle(fontSize:FontSize.s16,color: AppColor.white)
      ),
    )
);