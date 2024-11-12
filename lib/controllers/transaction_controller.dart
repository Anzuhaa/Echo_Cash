import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TransactionController extends GetxController {
  var balance = 1000000.obs;
  var visibility = false.obs;

  void setTopUp(int newValue) {
    balance.value += newValue;
  }

  void setBayar(int newValue) {
    balance.value -= newValue;
    visibility.value = true;
  }
}
