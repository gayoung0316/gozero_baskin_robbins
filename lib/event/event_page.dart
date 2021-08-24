import 'package:flutter/material.dart';
import 'package:gozero_baskin_robbins/mainHome/main_home_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Container(
        width: 320.w,
        child: Drawer(
          child: MainHomeDrawer(),
        ),
      ),
      backgroundColor: Color(0xffFFC7EF),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 27.w, right: 27.w, top: 56.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.keyboard_arrow_left_outlined,
                    size: 22.w,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '이벤트',
                  textScaleFactor: 1,
                  style: TextStyle(
                    color: Color(0xffffffff),
                    letterSpacing: 1.25,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                  ),
                ),
                InkWell(
                  onTap: () {
                    _scaffoldKey.currentState.openEndDrawer();
                  },
                  child: Image.asset(
                    'assets/main_menu.png',
                    width: 24.w,
                    height: 24.w,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 183.w,
            margin: EdgeInsets.only(top: 100.w),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xffFFDECB),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.w),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 18.w),
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/event/event_0_0.png',
                    width: 248.w,
                    height: 63.w,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 28.w),
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'assets/event/event_0_1.png',
                    width: 109.w,
                    height: 57.w,
                  ),
                ),
                Positioned(
                  bottom: 17.w,
                  left: 43.w,
                  child: Column(
                    children: [
                      Container(
                        width: 84.w,
                        height: 30.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.44),
                          borderRadius: BorderRadius.circular(4.w),
                          border: Border.all(
                            color: Color(0xffF8B1E8),
                            width: 1,
                          ),
                        ),
                        child: Text(
                          '자세히 보기',
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Color(0xffF89DDA),
                            fontSize: 12.sp,
                            letterSpacing: 1.25.w,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 2.w),
                      Text(
                        '9/1 ~ 9/30',
                        textScaleFactor: 1,
                        style: TextStyle(
                          color: Color(0xff867B66),
                          fontSize: 10.sp,
                          letterSpacing: 1.25.w,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 183.w,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 265.w),
            decoration: BoxDecoration(
              color: Color(0xffFFDAFB),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.w),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 18.w),
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/event/event_0_0.png',
                    width: 248.w,
                    height: 63.w,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 28.w),
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'assets/event/event_0_1.png',
                    width: 109.w,
                    height: 57.w,
                  ),
                ),
                Positioned(
                  bottom: 17.w,
                  left: 43.w,
                  child: Column(
                    children: [
                      Container(
                        width: 84.w,
                        height: 30.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.44),
                          borderRadius: BorderRadius.circular(4.w),
                          border: Border.all(
                            color: Color(0xffF8B1E8),
                            width: 1,
                          ),
                        ),
                        child: Text(
                          '자세히 보기',
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Color(0xffF89DDA),
                            fontSize: 12.sp,
                            letterSpacing: 1.25.w,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 2.w),
                      Text(
                        '9/1 ~ 9/30',
                        textScaleFactor: 1,
                        style: TextStyle(
                          color: Color(0xff867B66),
                          fontSize: 10.sp,
                          letterSpacing: 1.25.w,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
