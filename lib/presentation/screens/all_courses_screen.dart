import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pearogram/presentation/constants/values_manager.dart';
import 'package:pearogram/shared/filter_chip_widget.dart';
import 'dart:math';
import '../../shared/course_container_widget.dart';
import '../../shared/default_button.dart';
import '../constants/color_manager.dart';
import '../constants/font_manager.dart';
import '../constants/style_manager.dart';

class AllCoursesScreen extends StatelessWidget {
  const AllCoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool selected = false;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Courses',
          style:
              getRegularStyle(color: Colors.black, fontSize: FontSize.s16.sp),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Courses',
                  style: getBoldStyle(
                      color: Colors.black38, fontSize: FontSize.s20),
                ),
                Transform.rotate(
                  angle: pi / 2,
                  child: IconButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                          shape: const RoundedRectangleBorder( // <-- SEE HERE
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0),
                            ),
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              color: Colors.transparent.withAlpha(1),
                              height: 650.h,
                              child: Padding(
                                padding: const EdgeInsets.all(AppPadding.p25),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    FittedBox(
                                      child: SizedBox(
                                        width: 300.w,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Filter',
                                              style: getBoldStyle(
                                                  color: Colors.black87,
                                                  fontSize: FontSize.s20),
                                              textAlign: TextAlign.start,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              'Pick The Filters To specify what you are looking for',
                                              style: getSemiBoldStyle(
                                                  color: Colors.black45,
                                                  fontSize: FontSize.s17),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Rate',
                                      style: getBoldStyle(
                                          color: Colors.black,
                                          fontSize: FontSize.s20),
                                      textAlign: TextAlign.start,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        FilterChipWidget(text: '0 - 1'),
                                        FilterChipWidget(text: '1 - 2'),
                                        FilterChipWidget(text: '2 - 3'),
                                        FilterChipWidget(text: '3 - 4'),
                                        FilterChipWidget(text: '4 - 5'),
                                      ],
                                    ),
                                    Text(
                                      'Sub Category',
                                      style: getBoldStyle(
                                          color: Colors.black,
                                          fontSize: FontSize.s20),
                                      textAlign: TextAlign.start,
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          FilterChipWidget(text: 'HR'),
                                          FilterChipWidget(text: 'TOT'),
                                          FilterChipWidget(text: 'Supply Chain Management'),
                                          FilterChipWidget(text: 'HMP'),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          FilterChipWidget(text: 'Pharmacy Management'),
                                          FilterChipWidget(text: 'Customer Management'),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'Price',
                                      style: getBoldStyle(
                                          color: Colors.black,
                                          fontSize: FontSize.s20),
                                      textAlign: TextAlign.start,
                                    ),
                                    Expanded(
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          FilterChipWidget(text: 'Paid'),
                                          SizedBox(width: 5.w,),
                                          FilterChipWidget(text: 'Free'),
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      thickness: 1,
                                      color: Colors.black12,
                                    ),
                                    Center(
                                      child: DefaultButton(
                                          btnText: 'Apply Changes',
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
                            );
                          },
                        );
                      },
                      icon: Icon(
                        Icons.tune,
                        color: AppColor.primaryColor,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: SizedBox(
                height: 600.h,
                child: ListView.builder(
                  itemBuilder: (_, index) => const CourseContainerWidget(
                      instructor: 'by Dr/Ahmed Selem',
                      title: 'Supply Chain management'),
                  itemCount: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
