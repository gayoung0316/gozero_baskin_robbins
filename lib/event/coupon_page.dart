import 'package:flutter/material.dart';
import 'package:gozero_baskin_robbins/mainHome/main_home_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CouponPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Container(
        width: 320.w,
        child: Drawer(
          child: MainHomeDrawer(),
        ),
      ),
      backgroundColor: Color(0xffFFC7EF),
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SizedBox(height: 56.w),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Image.asset(
                  'assets/bacskin_robbins_logo.png',
                  width: 195.w,
                  height: 33.w,
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
          SizedBox(height: 18.w),
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 184.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/event/event_page_back.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.w),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
