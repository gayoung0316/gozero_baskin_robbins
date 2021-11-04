import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainHomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 235.w,
            decoration: BoxDecoration(
              color: Color(0xffFFC7EF),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 105.w,
                      height: 105.w,
                      margin: EdgeInsets.only(left: 35.w, top: 90.w),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                        color: Color(0xfff8b1e8),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 90.w, left: 30.w),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/jk.jpeg',
                          fit: BoxFit.cover,
                          width: 105.w,
                          height: 105.w,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 23.w),
                Padding(
                  padding: EdgeInsets.only(top: 110.w),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/bacskin_robbins_logo.png',
                        width: 119.w,
                        height: 23.w,
                      ),
                      SizedBox(height: 6.w),
                      RichText(
                        textScaleFactor: 1,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '안녕하세요! ',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xffFFFFFF),
                                letterSpacing: 1.25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: '최가영',
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Color(0xffF970C5),
                                letterSpacing: 1.25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: '님',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xffFFFFFF),
                                letterSpacing: 1.25,
                                fontWeight: FontWeight.w500,
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
          ),
          Container(
            height: 57.w,
            color: Color(0xffFAB0E1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 19.w),
                  child: Text(
                    '베스킨라빈스 앱 초대',
                    textScaleFactor: 1,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xffFFFFFF),
                      letterSpacing: 1.25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 18.w),
                  width: 22.w,
                  height: 22.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0x60ffffff),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 17.w,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 41.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              itemBox(
                image: 'order_now',
                title: '주문 내역',
                width: 55,
                height: 51,
                top: 18,
              ),
              SizedBox(width: 20.w),
              itemBox(
                image: 'mainHome_rider',
                title: '배달 현황',
                width: 56,
                height: 56,
                top: 12,
              ),
            ],
          ),
          SizedBox(height: 30.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              itemBox(
                image: 'baskin_robbins_coupon',
                title: '쿠폰함',
                width: 74,
                height: 50,
                top: 18,
              ),
              SizedBox(width: 20.w),
              itemBox(
                image: 'mainHome_gift',
                title: '선물함',
                width: 63,
                height: 63,
                top: 12,
              ),
            ],
          ),
          SizedBox(height: 38.w),
          Divider(
            height: 0,
            thickness: 1,
            color: Color(0xff626262).withOpacity(0.26),
          ),
          SizedBox(height: 21.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 23.w),
                  Image.asset(
                    'assets/settings.png',
                    width: 26.w,
                    height: 26.w,
                  ),
                  SizedBox(width: 14.w),
                  Text(
                    '디바이스 설정',
                    textScaleFactor: 1,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xff59585a),
                      letterSpacing: 1.25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 21.w),
                child: Icon(
                  Icons.keyboard_arrow_right_sharp,
                  size: 24.w,
                  color: Color(0xffC4C4C4),
                ),
              ),
            ],
          ),
          SizedBox(height: 17.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 23.w),
                  Image.asset(
                    'assets/notifications.png',
                    width: 26.w,
                    height: 26.w,
                  ),
                  SizedBox(width: 14.w),
                  Text(
                    '알림 설정',
                    textScaleFactor: 1,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xff59585a),
                      letterSpacing: 1.25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 21.w),
                child: Icon(
                  Icons.keyboard_arrow_right_sharp,
                  size: 24.w,
                  color: Color(0xffC4C4C4),
                ),
              ),
            ],
          ),
          SizedBox(height: 46.w),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/kakaotalk.png',
                width: 48.w,
                height: 50.w,
              ),
              SizedBox(width: 20.w),
              Image.asset(
                'assets/instagram.png',
                width: 48.w,
                height: 50.w,
              ),
              SizedBox(width: 20.w),
              Image.asset(
                'assets/facebook.png',
                width: 48.w,
                height: 50.w,
              ),
              SizedBox(width: 20.w),
              Image.asset(
                'assets/youtube.png',
                width: 48.w,
                height: 50.w,
              ),
            ],
          ),
          SizedBox(height: 28.w),
        ],
      ),
    );
  }

  Widget itemBox({
    @required String image,
    @required String title,
    @required num width,
    @required num height,
    @required num top,
  }) {
    return Container(
      width: 120.w,
      height: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.w),
        boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
        color: Color(0xffffd9fb),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: top.w,
            child: Image.asset(
              'assets/$image.png',
              width: width.w,
              height: height.w,
            ),
          ),
          Positioned(
            bottom: 10.w,
            child: Text(
              title,
              textScaleFactor: 1,
              style: TextStyle(
                color: Color(0xff59585a),
                fontSize: 12.sp,
                letterSpacing: 1.25,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
