import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearn/common/values/colors.dart';
import 'package:ulearn/page/app/app_widgets.dart';
import 'package:ulearn/page/app/bloc/app_blocs.dart';
import 'package:ulearn/page/app/bloc/app_events.dart';
import 'package:ulearn/page/app/bloc/app_states.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBlocs, AppState>(builder: (context, state) {
      return Container(
        color: Colors.white,
        child: SafeArea(
            child: Scaffold(
          body: buildPage(_index),
          bottomNavigationBar: Container(
            width: 375.w,
            height: 58.h,
            decoration: BoxDecoration(
                color: AppColors.primaryElement,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.h),
                    topRight: Radius.circular(20.h)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                  )
                ]),
            child: BottomNavigationBar(
              currentIndex: _index,
              onTap: (value) {
                context.read<AppBlocs>().add(TriggerAppEvent(value));
              },
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: AppColors.primaryElement,
              unselectedItemColor: AppColors.primaryFourElementText,
              items: [
                BottomNavigationBarItem(
                  label: "home",
                  icon: SizedBox(
                    width: 15.w,
                    height: 15.h,
                    child: Image.asset("assets/icons/home.png"),
                  ),
                  activeIcon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: Image.asset(
                        "assets/icons/home.png",
                        color: AppColors.primaryElement,
                      )),
                ),
                BottomNavigationBarItem(
                  label: "search",
                  icon: SizedBox(
                    width: 15.w,
                    height: 15.h,
                    child: Image.asset("assets/icons/search2.png"),
                  ),
                  activeIcon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: Image.asset(
                        "assets/icons/search2.png",
                        color: AppColors.primaryElement,
                      )),
                ),
                BottomNavigationBarItem(
                  label: "play",
                  icon: SizedBox(
                    width: 15.w,
                    height: 15.h,
                    child: Image.asset("assets/icons/play-circle1.png"),
                  ),
                  activeIcon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: Image.asset(
                        "assets/icons/play-circle1.png",
                        color: AppColors.primaryElement,
                      )),
                ),
                BottomNavigationBarItem(
                  label: "chat",
                  icon: SizedBox(
                    width: 15.w,
                    height: 15.h,
                    child: Image.asset("assets/icons/message-circle.png"),
                  ),
                  activeIcon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: Image.asset(
                        "assets/icons/message-circle.png",
                        color: AppColors.primaryElement,
                      )),
                ),
                BottomNavigationBarItem(
                  label: "profile",
                  icon: SizedBox(
                    width: 15.w,
                    height: 15.h,
                    child: Image.asset("assets/icons/person2.png"),
                  ),
                  activeIcon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: Image.asset(
                        "assets/icons/person2.png",
                        color: AppColors.primaryElement,
                      )),
                ),
              ],
            ),
          ),
        )),
      );
    });
  }
}
