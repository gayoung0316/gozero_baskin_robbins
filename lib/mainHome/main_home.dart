import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  width: 560.w,
                  height: 380.w,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 300.w,
                    left: 28.w,
                    right: 28.w,
                  ),
                  height: 120.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.w),
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
                        margin: EdgeInsets.only(left: 18.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60.w),
                          child: Image.asset(
                            'assets/jk.jpeg',
                            height: 90.w,
                            width: 90.w,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30.w),
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
                            padding: EdgeInsets.only(left: 30.w),
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
                            margin: EdgeInsets.only(left: 30.w, top: 14.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffF89DDA).withOpacity(0.66),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              child: Center(
                                child: Text(
                                  '광주광역시 광산구 베라로 31 ',
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
              padding: EdgeInsets.only(top: 36.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleBox(image: 'mainHome_rider', title: '배달하기'),
                  SizedBox(width: 27.w),
                  circleBox(image: 'mainHome_gift', title: '선물하기'),
                  SizedBox(width: 27.w),
                  circleBox(image: 'mainHome_Fire', title: '이벤트'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 23.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: Text(
                      '인기 메뉴',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5A585A),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, top: 10.w),
                    child: SingleChildScrollView(
                      child: Row(
                        children: [
                          hotMenu(
                            image: 'my_friend_pengsu',
                            name: '내 친구 펭수',
                            width: 86.w,
                            height: 86.w,
                            index: 1,
                          ),
                          SizedBox(width: 21.w),
                          hotMenu(
                            image: 'shine_muscat',
                            name: '샤인머스캣\n말랑 블렌디드',
                            width: 71.w,
                            height: 97.w,
                            index: 2,
                          ),
                          SizedBox(width: 21.w),
                          hotMenu(
                            image: 'mom_is_alien',
                            name: '엄마는 외계인\n블라스트',
                            width: 75.w,
                            height: 97.w,
                            index: 3,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 27.w,
            )
          ],
        ),
      ),
    );
  }

  Widget hotMenu(
      {String image, String name, num width, num height, int index}) {
    return Stack(
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
          width: 95.w,
          height: 140.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/$image.png',
                width: width,
                height: height,
              ),
              Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 8.w,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/subtract.png',
                width: 9.w,
                height: 15.w,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 3.w),
                child: Text(
                  index.toString(),
                  textScaleFactor: 1,
                  style: TextStyle(
                    color: Color(0xffF970C5),
                    fontSize: 6.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget circleBox({String image, String title}) {
    return Container(
      width: 78.w,
      height: 78.w,
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
            padding: EdgeInsets.only(top: 8.w),
            child: Image.asset(
              'assets/$image.png',
              width: 44.w,
              height: 44.w,
            ),
          ),
          SizedBox(height: 4.w),
          Text(
            title,
            style: TextStyle(
              color: Color(0xffF970C5),
              fontWeight: FontWeight.w400,
              fontSize: 9.sp,
            ),
          )
        ],
      ),
    );
  }
}
