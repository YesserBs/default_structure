import 'package:get/get.dart';

// Controller for the dashboard page
class DashboardController extends GetxController {
  var tabIndex = 0; // Current index for the bottom navigation bar

  // Method to change the tab index and trigger updates
  void changeTabIndex(int index) {
    print(tabIndex);
    tabIndex = index; // Set the new tab index
    update(); // Trigger an update to rebuild the UI
  }
}
