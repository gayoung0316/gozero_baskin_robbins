import 'package:flutter/material.dart';
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/main_group.png',
                    width: 560,
                    height: 455,
                    fit: BoxFit.cover,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 27, top: 60),
                        child: Image.asset(
                          'assets/main_menu.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 350, left: 35, right: 35),
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
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
                          margin: EdgeInsets.only(left: 18),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset(
                              'assets/jk.jpeg',
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 24,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 11),
                              child: Text(
                                '최가영님, 오늘은',
                                style: TextStyle(
                                  color: Color(0xff5A585A),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 11),
                              child: Text(
                                '어떤 맛을 원하세요?',
                                style: TextStyle(
                                  color: Color(0xff5A585A),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: 14),
                            Container(
                              width: 196,
                              height: 23,
                              margin: EdgeInsets.only(right: 30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffF89DDA).withOpacity(0.66),
                              ),
                              child: Center(
                                child: Text(
                                  '광주 광역시 광산구 베라로 31',
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
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
              SizedBox(height: 36),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 44),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 78,
                      height: 78,
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
                          SizedBox(height: 8),
                          Image.asset(
                            'assets/mainHome_rider.png',
                            width: 44,
                            height: 44,
                          ),
                          SizedBox(height: 4),
                          Text(
                            '배달하기',
                            style: TextStyle(
                              color: Color(0xffF970C5),
                              fontWeight: FontWeight.w400,
                              fontSize: 9,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      width: 78,
                      height: 78,
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
                          SizedBox(height: 8),
                          Image.asset(
                            'assets/mainHome_gift.png',
                            width: 44,
                            height: 44,
                          ),
                          SizedBox(height: 4),
                          Text(
                            '선물하기',
                            style: TextStyle(
                              color: Color(0xffF970C5),
                              fontWeight: FontWeight.w400,
                              fontSize: 9,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 78,
                      height: 78,
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
                          SizedBox(height: 8),
                          Image.asset(
                            'assets/mainHome_Fire.png',
                            width: 44,
                            height: 44,
                          ),
                          SizedBox(height: 4),
                          Text(
                            '이벤트',
                            style: TextStyle(
                              color: Color(0xffF970C5),
                              fontWeight: FontWeight.w400,
                              fontSize: 9,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text('인기 메뉴'),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Image.asset(''),
                            Container(
                              child: Column(
                                children: [
                                  Image.asset(''),
                                  Text('내 친구 펭수'),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
