import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gozero_baskin_robbins/model/ice_cream_menu.dart';

class IceCreamMenuInfo extends StatelessWidget {
  final Map<String, dynamic> iceCreamMenu;
  IceCreamMenuInfo({this.iceCreamMenu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFC7EF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 56.w),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 27.w),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.keyboard_arrow_left_outlined,
                        size: 22.w,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    '제품 상세',
                    textScaleFactor: 1,
                    style: TextStyle(
                      color: Color(0xffffffff),
                      letterSpacing: 1.25,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 22.w,
                top: 31.w,
              ),
              child: Text(
                iceCreamMenu['name'],
                textScaleFactor: 1.0,
                style: TextStyle(
                  color: Color(0xffF970C5),
                  letterSpacing: 1.25,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 4.w,
                left: 22.w,
              ),
              child: Text(
                iceCreamMenu['name'],
                textScaleFactor: 1.0,
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  letterSpacing: 1.25,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/ice_cream_menu/${iceCreamMenu['image']}.png',
                height: 254,
                width: 254,
              ),
            ),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 28.w,
                      left: 25.w,
                      bottom: 15.w,
                    ),
                    child: Text(
                      '사이즈',
                      textScaleFactor: 1.0,
                      style: TextStyle(
                        color: Color(0xff5A585A),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.25,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...iceCreamSize.map((size) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/ice_cream_menu/${size['image']}.png',
                                  height: 68,
                                  width: 55,
                                ),
                                SizedBox(height: 7.w),
                                Text(
                                  size['name'],
                                  textScaleFactor: 1.0,
                                  style: TextStyle(
                                    color: Color(0xff5A585A),
                                    fontSize: 13.sp,
                                    letterSpacing: 1.25,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 2.w),
                                Text(
                                  size['count'],
                                  textScaleFactor: 1.0,
                                  style: TextStyle(
                                    color: Color(0xff5A585A),
                                    fontSize: 10.sp,
                                    letterSpacing: 1.25,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          );
                        })
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25.w),
                    child: Divider(
                      color: Color(0xff979797).withOpacity(0.72),
                      indent: 18.w,
                      endIndent: 18.w,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 25.w,
                      bottom: 24.w,
                    ),
                    child: Text(
                      '맛 추가',
                      textScaleFactor: 1.0,
                      style: TextStyle(
                        color: Color(0xff5A585A),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.25,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 18.w,
                      runSpacing: 20.w,
                      children: [
                        ...iceCreamAddMenu.map((item) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/ice_cream_menu/${item['image']}.png',
                                height: 66,
                                width: 66,
                              ),
                              SizedBox(height: 7.w),
                              Text(
                                item['name'],
                                textScaleFactor: 1.0,
                                style: TextStyle(
                                  color: Color(0xff848484),
                                  letterSpacing: 1.25,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          );
                        })
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25.w),
                    child: Divider(
                      color: Color(0xff979797).withOpacity(0.72),
                      indent: 18.w,
                      endIndent: 18.w,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
