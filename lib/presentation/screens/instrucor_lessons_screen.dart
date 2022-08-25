import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../presentation/constants/style_manager.dart';
import '../../presentation/constants/values_manager.dart';
import '../../presentation/screens/login_screen.dart';
import '../../shared/details_headlines_widget.dart';
import '../../shared/instructor_widget.dart';
import '../../shared/instuctor_info_widget.dart';
import '../../shared/lessons_list.dart';
import '../../shared/play_widget.dart';
import '../../shared/lessons_tab_widget.dart';
import '../../shared/read_more_widget.dart';
import '../constants/color_manager.dart';
import '../constants/font_manager.dart';
class InstructorLessonsScreen extends StatefulWidget {
  const InstructorLessonsScreen({Key? key}) : super(key: key);

  @override
  State<InstructorLessonsScreen> createState() =>
      _InstructorLessonsScreenState();
}

class _InstructorLessonsScreenState extends State<InstructorLessonsScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    List<Tab> tabBars = [
      const Tab(
        text: 'Lessons',
      ),
      const Tab(text: 'Instructor'),
    ];
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            SizedBox(
                height: 800.h,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/tab2.png',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                icon: const Icon(Icons.arrow_back)),
            Positioned(
              top: 220,
              height: 600.h,
              child: SingleChildScrollView(
                child: Container(
                  width: 410.w,
                  height: 700.h,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 3.0.r,
                        spreadRadius: 1.0.r,
                        offset: const Offset(
                            2.0, 2.0), // shadow direction: bottom right
                      )
                    ],
                    color: AppColor.white,
                    borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))
                        .r,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.p25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 60.w,
                          decoration: BoxDecoration(
                            color: AppColor.softSkillContainer,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)).r,
                          ),
                          child: Text(
                            'SoftSkills',
                            style:
                                getSemiBoldStyle(color: AppColor.softSkillText),
                          ),
                        ),
                        const DetailsHeadLinesWidget(
                            fontSize: FontSize.s16,
                            postSizedHeight: 5,
                            title:
                                'Selling Skills-Selling Skills (Basic Selling Skills, Advanced Selling Skills)-Soft Skills'),
                        Text(
                          'Ahmed Selem . 25 Lessons - 24 Hours',
                          style: getMediumStyle(
                              color: Colors.black54, fontSize: FontSize.s14),
                        ),
                        const DetailsHeadLinesWidget(
                          title: 'About me',
                          fontSize: FontSize.s16,
                          preSizedHeight: 10,
                          postSizedHeight: 5,
                        ),
                        const ReadMoreWidget(
                            text:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever"),
                        TabBar(
                          labelColor: AppColor.primaryColor,
                          controller: tabController,
                          indicatorColor: AppColor.primaryColor,
                          indicatorWeight: 3,
                          tabs: tabBars,
                          labelStyle: getRegularStyle(
                              color: AppColor.primaryColor,
                              fontSize: FontSize.s20),
                        ),
                        DefaultTabController(
                          length: 2,
                          child: Expanded(
                              child: TabBarView(
                            controller: tabController,
                            children: [
                              const LessonsTabWidget(body: LessonList()),

                              // second tab bar view widget
                               LessonsTabWidget(body: SingleChildScrollView(
                                 child: Column(
                                  children: [

                                  const  InstructorWidget(radius: 30,subTitle: 'View Profile',title: 'About Instructor',),
                                    SizedBox(height: 5.h,),
                                    Row(children: [
                                      PlayWidget(iconColor: Colors.black45, containerColor: AppColor.white,shadow: 1,height: 22,radius: 18,),
                                      SizedBox(width: 5.w,),
                                      Text('5 Courses',style: getMediumStyle(color: Colors.black54,fontSize: FontSize.s14),)
                                    ],),
                                    SizedBox(height: 5.h,),
                                    Row(children: [
                                      PlayWidget(icon: Icons.groups,iconColor: Colors.black45, containerColor: AppColor.white,shadow: 1,height: 22,radius: 18,),
                                      SizedBox(width: 5.w,),
                                      Text('301 Students',style: getMediumStyle(color: Colors.black54,fontSize: FontSize.s14),)
                                    ],),
                                    SizedBox(height: 10.h,),
                                    const InstructorInfoWidget(infoFontSize: FontSize.s14,postSize: 5),

                                  ],
                              ),
                               )),
                            ],
                          )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 190,
                left: 300,
                child: PlayWidget(
                  iconColor: AppColor.primaryColor,
                  containerColor: AppColor.white,
                )),
          ],
        ),
      ),
    );
  }
}
