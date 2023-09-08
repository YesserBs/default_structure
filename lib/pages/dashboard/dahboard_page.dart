import 'package:default_structure/settings/constant/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../details/details_page.dart';
import '../home/home_page.dart';
import 'dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  DashboardController DC = Get.find();



  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        builder: (controller) {
          return Scaffold(
            body: SafeArea(
              child: IndexedStack(
                index: DC.tabIndex,
                children: [
                  HomePage(),
                  DetailsPage(),
                  DetailsPage()
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: config.lightPrimaryColor,
              selectedItemColor: config.primaryColor,
              onTap: DC.changeTabIndex,
              currentIndex: DC.tabIndex, //controller.tabIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              elevation: 0,
              items: [
                _bottomNavigationBarItem(
                  icon: CupertinoIcons.app_fill,
                  label: 'Home',
                ),
                _bottomNavigationBarItem(
                  icon: CupertinoIcons.app_fill,
                  label: 'Cart',
                ),
                _bottomNavigationBarItem(
                  icon: CupertinoIcons.app_fill,
                  label: 'Cart',
                ),
              ],
            ),
          );
        }
        );
  }

  // Helper method to create a BottomNavigationBarItem
  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon, size: 20),
      label: label,
    );
  }
}
