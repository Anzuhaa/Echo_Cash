import 'package:echo_cash/Pages/controllers/dashboard_controller.dart';
import 'package:echo_cash/Pages/controllers/transaction_controller.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => TransactionController());
  }
}
