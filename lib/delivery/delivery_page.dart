import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gozero_baskin_robbins/model/ice_cream_menu.dart';

import 'ice_cream_menu_info.dart';

class DeliveryPage extends StatefulWidget {
  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  List<String> tabMenuItem = ['아이스크림', '아이스크림 케이크', '음료', '커피', '디저트'];
  int selectTabMenuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFC7EF),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
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
                        '배달하기',
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
                SizedBox(height: 28.w),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 37.w),
                  padding: EdgeInsets.only(left: 16.w),
                  height: 35.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.w),
                    color: Color.fromRGBO(255, 255, 255, 0.31),
                  ),
                  alignment: Alignment.center,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      isCollapsed: true,
                      suffixIcon: Icon(
                        Icons.search,
                        color: Color.fromRGBO(255, 255, 255, 0.87),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 17.w),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...tabMenuItem.map(
                        (item) => InkWell(
                          onTap: () {
                            setState(() {
                              selectTabMenuIndex = tabMenuItem.indexOf(item);
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              left:
                                  tabMenuItem.indexOf(item) == 0 ? 20.w : 14.w,
                              right: tabMenuItem.indexOf(item) ==
                                      tabMenuItem.length - 1
                                  ? 20.w
                                  : 0,
                            ),
                            decoration: BoxDecoration(
                              color: selectTabMenuIndex ==
                                      tabMenuItem.indexOf(item)
                                  ? Color(0xffFFFFFF).withOpacity(0.31)
                                  : null,
                              borderRadius: selectTabMenuIndex ==
                                      tabMenuItem.indexOf(item)
                                  ? BorderRadius.circular(30.w)
                                  : null,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: selectTabMenuIndex ==
                                        tabMenuItem.indexOf(item)
                                    ? 14.w
                                    : 0,
                                vertical: selectTabMenuIndex ==
                                        tabMenuItem.indexOf(item)
                                    ? 4.w
                                    : 0,
                              ),
                              child: Text(
                                item,
                                textScaleFactor: 1,
                                style: TextStyle(
                                  color: selectTabMenuIndex ==
                                          tabMenuItem.indexOf(item)
                                      ? Color(0xffF970C5)
                                      : Color(0xffFFFFFF),
                                  fontSize: 13.sp,
                                  letterSpacing: 1.25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 90.w),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Color(0xffFFF0FE).withOpacity(0.94),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.w),
                        topRight: Radius.circular(30.w),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 223.w,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 40.w,
                  runSpacing: 40.w,
                  children: [
                    ...iceCreamMenu.map((item) {
                      return InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => IceCreamMenuInfo(
                              iceCreamMenu: item,
                            ),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.w),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x1ef96fc5),
                                blurRadius: 4,
                                offset: Offset(3, 3),
                              ),
                            ],
                          ),
                          width: 120.w,
                          height: 140.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/ice_cream_menu/${item['image']}.png',
                                height: 120,
                                width: 110,
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
                          ),
                        ),
                      );
                    })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
