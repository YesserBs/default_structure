import 'package:default_structure/pages/details/details_page.dart';
import 'package:default_structure/pages/home/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'binding.dart';


/* I use this class to define the first pages that can show up when
openning the app, example: the home page or the login page..
For simplicty i used DetailsPage and didn't make a login page here:
*/

class AppPages {
  static const String Home = '/home';
  static const String Details = '/details';

  static var list = [
    GetPage(
      name: Home,
      page: () => HomePage(),
      binding: Binding(),
    ),
    GetPage(
      name: Details,
      page: () => DetailsPage(),
      binding: Binding(),
    ),
  ];
}

