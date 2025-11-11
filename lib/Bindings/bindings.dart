import 'package:echo_cash/Pages/responsive_layout.dart';
import 'package:echo_cash/controllers/contact_controller.dart';
import 'package:echo_cash/controllers/dashboard_controller.dart';
import 'package:echo_cash/controllers/responsive_controller.dart';
import 'package:echo_cash/controllers/transaction_controller.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => TransactionController());
    Get.lazyPut(() => ContactController());
    Get.lazyPut(() => ResponsiveController());
  }
}
