import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:gozero_baskin_robbins/provider/fixed_provider.dart';
// import 'package:provider/provider.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/main_group.png',
                  width: 560.sp,
                  height: 380.sp,
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 30.sp, top: 47.sp),
                      child: Image.asset(
                        'assets/main_menu.png',
                        width: 18.sp,
                        height: 18.sp,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 300.sp, left: 28.sp, right: 28.sp),
                  // width: MediaQuery.of(context).size.width,
                  height: 120.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromRGBO(248, 157, 217, 0.3100000023841858),
                        offset: Offset(3, 3),
                        blurRadius: 4,
                      )
                    ],
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 18.sp),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60.sp),
                          child: Image.asset(
                            'assets/jk.jpeg',
                            height: 90.sp,
                            width: 90.sp,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30.sp),
                            child: Text(
                              '최가영님, 오늘은',
                              style: TextStyle(
                                color: Color(0xff5A585A),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30.sp),
                            child: Text(
                              '어떤 맛을 원하세요?',
                              style: TextStyle(
                                color: Color(0xff5A585A),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            // width: 150.sp,
                            height: 18.sp,
                            margin: EdgeInsets.only(left: 30.sp, top: 14.sp),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffF89DDA).withOpacity(0.66),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.sp),
                              child: Center(
                                child: Text(
                                  '베라로 31',
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 36.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 78.sp,
                    height: 78.sp,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        )
                      ],
                      color: Color.fromRGBO(255, 221, 248, 1),
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(78, 78),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.sp),
                          child: Image.asset(
                            'assets/mainHome_rider.png',
                            width: 44.sp,
                            height: 44.sp,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4.sp),
                          child: Text(
                            '배달하기',
                            style: TextStyle(
                              color: Color(0xffF970C5),
                              fontWeight: FontWeight.w400,
                              fontSize: 9.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.sp),
                    width: 78.sp,
                    height: 78.sp,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        )
                      ],
                      color: Color.fromRGBO(255, 221, 248, 1),
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(78, 78),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.sp),
                          child: Image.asset(
                            'assets/mainHome_gift.png',
                            width: 44.sp,
                            height: 44.sp,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4.sp),
                          child: Text(
                            '선물하기',
                            style: TextStyle(
                              color: Color(0xffF970C5),
                              fontWeight: FontWeight.w400,
                              fontSize: 9.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 78.sp,
                    height: 78.sp,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        )
                      ],
                      color: Color.fromRGBO(255, 221, 248, 1),
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(78, 78),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.sp),
                          child: Image.asset(
                            'assets/mainHome_Fire.png',
                            width: 44.sp,
                            height: 44.sp,
                          ),
                        ),
                        // SizedBox(height: 4),
                        Padding(
                          padding: EdgeInsets.only(top: 4.sp),
                          child: Text(
                            '이벤트',
                            style: TextStyle(
                              color: Color(0xffF970C5),
                              fontWeight: FontWeight.w400,
                              fontSize: 9.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 23.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.sp),
                    child: Text(
                      '인기 메뉴',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5A585A),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.sp, top: 10.sp),
                    child: SingleChildScrollView(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFAFED).withOpacity(0.89),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                )
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            width: 95.sp,
                            height: 140.sp,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/my_friend_pengsu.png',
                                  width: 86.sp,
                                  height: 88.sp,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  '내 친구 펭수',
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 21.sp),
                            decoration: BoxDecoration(
                              color: Color(0xffFFAFED).withOpacity(0.89),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                )
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            width: 95.sp,
                            height: 140.sp,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/shine_muscat.png',
                                  width: 71.sp,
                                  height: 97.sp,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 17.sp),
                                  child: Text(
                                    '샤인머스캣 말랑 블렌디드',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 21.sp),
                            decoration: BoxDecoration(
                              color: Color(0xffFFAFED).withOpacity(0.89),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                )
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            width: 95.sp,
                            height: 140.sp,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/mom_is_alien.png',
                                  width: 75.sp,
                                  height: 97.sp,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 17.sp),
                                  child: Text(
                                    '엄마는 외계인 블라스트',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
