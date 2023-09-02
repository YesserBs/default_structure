import 'package:default_structure/pages/details/details_page.dart';
import 'package:default_structure/pages/home/home_page.dart';
import 'package:default_structure/settings/app_pages.dart';
import 'package:default_structure/settings/constant/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      /* You can make a function that returns the page that should
      be shown, depending on a boolean, for example if (isAuthenticated)
      show HomePage, else show LoginPage*/
      initialRoute: AppPages.Home,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: config.primaryColor,
        ),
      ),
    );
  }
}
