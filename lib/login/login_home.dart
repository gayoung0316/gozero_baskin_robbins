import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gozero_baskin_robbins/mainHome/bottom_navigation_bar.dart';
import '../mainHome/main_home.dart';

class LoginHome extends StatefulWidget {
  @override
  _LoginHomeState createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  @override
  Widget build(BuildContext context) {
    bool _checkValue = false;
    TextEditingController _idController = TextEditingController();
    TextEditingController _pwController = TextEditingController();

    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/login_back.png',
            height: 350.h,
            width: 500.w,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(top: 29.sp),
            child: Image.asset(
              'assets/login_br_logo.png',
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 55.sp,
                  top: 14.sp,
                ),
                child: Text(
                  '아이디',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 4.sp,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF).withOpacity(0.57),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 30.w,
                  width: 285.w,
                  child: TextField(
                    controller: _idController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 54.w, top: 19.w),
                child: Text(
                  '비밀번호',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 4.sp),
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF).withOpacity(0.57),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 30.w,
                  width: 285.w,
                  child: TextField(
                    controller: _pwController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 18.w),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 55.w),
                      child: Text(
                        '회원가입',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 45.w),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _checkValue = !_checkValue;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: _checkValue
                                    ? Color(0xffF970C5)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(3),
                                border: _checkValue
                                    ? null
                                    : Border.all(
                                        color: Color(0xffF970C5),
                                        width: 2.0,
                                      ),
                              ),
                              width: 24.w,
                              height: 24.w,
                              child: _checkValue
                                  ? Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    )
                                  : null,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0.w),
                            child: Text(
                              '로그인 유지',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavigation(),
                ),
              );
            },
            child: Container(
              width: 128.w,
              height: 36.w,
              margin: EdgeInsets.only(top: 42.w),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: Text(
                  '로그인',
                  style: TextStyle(
                    color: Color(0xffF970C5),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
