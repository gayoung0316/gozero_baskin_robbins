import 'package:flutter/material.dart';
import 'mainHome.dart';

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

    num deviceWidth = MediaQuery.of(context).size.width;
    num deviceHeighth = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/login_back.png',
              height: deviceWidth * 1.08,
              width: deviceWidth,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(top: deviceWidth * 0.02),
              child: Image.asset(
                'assets/login_br_logo.png',
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: deviceWidth * 0.145,
                        top: deviceWidth * 0.05,
                      ),
                      child: Text(
                        '아이디',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: deviceWidth * 0.145,
                        right: deviceWidth * 0.145,
                        top: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF).withOpacity(0.57),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: 30,
                      width: deviceWidth * 0.5,
                      child: TextField(
                        controller: _idController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 54, top: 19),
                      child: Text(
                        '비밀번호',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 45, right: 45, top: 4),
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF).withOpacity(0.57),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: 30,
                      width: deviceWidth * 0.145,
                      child: TextField(
                        controller: _pwController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      margin: EdgeInsets.only(top: 18, left: 55),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '회원가입',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          Row(
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
                                  width: 24,
                                  height: 24,
                                  child: _checkValue
                                      ? Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        )
                                      : null,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
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
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainHome(),
                  ),
                );
              },
              child: Container(
                width: 128,
                height: 36,
                margin: EdgeInsets.only(top: 42),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Center(
                  child: Text(
                    '로그인',
                    style: TextStyle(
                      color: Color(0xffF970C5),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
