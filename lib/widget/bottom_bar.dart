import 'package:flutter/material.dart';
import 'package:gozero_baskin_robbins/provider/home_provider.dart';
import 'package:provider/provider.dart';

class BottomNavWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);

    return Container(
      // 바닥 탭과 재생 탭을 분리하는 선
      decoration: BoxDecoration(
        color: Color(0xff262626),
        boxShadow: [
          BoxShadow(
            color: Color(0xff262626),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: homeProvider.pageIdx,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        onTap: (int index) {
          homeProvider.pageIdx = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/bottom_icon/main_home${homeProvider.pageIdx == 0 ? 'on' : 'off'}.png',
              height: 40.0,
              fit: BoxFit.fitHeight,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/bottom_icon/shopping_basket_off.png',
              // 'assets/icons/dj_off.png',
              height: 40.0,
              fit: BoxFit.fitHeight,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Image.asset(
              'assets/bottom_icon/bottom_icon/delivery_off.png',
              height: 40.0,
              fit: BoxFit.fitHeight,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/bottom_icon/ticket${homeProvider.pageIdx == 3 ? 'on' : 'off'}.png',
              height: 40.0,
              fit: BoxFit.fitHeight,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
