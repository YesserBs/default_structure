import 'package:default_structure/pages/home/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../pages/dashboard/dahboard_page.dart';
import 'binding.dart';


/* I use this class to define the first pages that can show up when
openning the app, example: the home page or the login page..
For simplicty i used DetailsPage and didn't make a login page here:
*/

class AppPages {
  static const String DASHBOARD = '/';
  static const String HOME = '/home';

  static var list = [
    GetPage(
      name: DASHBOARD,
      page: () => DashboardPage(),
      binding: Binding(),
    ),
    GetPage(
      name: HOME,
      page: () => HomePage(),
      binding: Binding(),
    ),
  ];
}

