import 'package:flutter/material.dart';
import 'package:gozero_baskin_robbins/event/coupon_page.dart';
import 'package:gozero_baskin_robbins/mainHome/main_home.dart';
import 'package:gozero_baskin_robbins/provider/home_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigation createState() => _BottomNavigation();
}

class _BottomNavigation extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);

    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xff262626),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: homeProvider.pageIdx,
          elevation: 0,
          onTap: (int index) {
            homeProvider.pageIdx = index;
          },
          showSelectedLabels: false, // 라벨 텍스트 선택 x
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/bottom_icon/main_home_${homeProvider.pageIdx == 0 ? 'on' : 'off'}.png',
                height: 24.w,
                fit: BoxFit.fitHeight,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/bottom_icon/shopping_basket_off.png',
                height: 24.w,
                fit: BoxFit.fitHeight,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Image.asset(
                'assets/bottom_icon/delivery_off.png',
                height: 24.w,
                fit: BoxFit.fitHeight,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/bottom_icon/ticket_${homeProvider.pageIdx == 3 ? 'on' : 'off'}.png',
                height: 24.w,
                fit: BoxFit.fitHeight,
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(homeProvider.pageIdx),
      ),
    );
  }

  List _widgetOptions = [
    MainHome(),
    Text(
      'Music',
      style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
    ),
    Text(
      'Places',
      style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
    ),
    CouponPage(),
  ];
}
