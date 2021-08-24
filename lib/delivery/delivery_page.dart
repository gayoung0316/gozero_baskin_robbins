import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryPage extends StatefulWidget {
  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFC7EF),
      body: Column(
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
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
