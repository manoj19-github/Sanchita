import 'package:get/get.dart';

class ExpensesChartController extends GetxController {
  RxString chartType = "chart".obs;

  void toggleExpensesMode(String tab) {
    chartType.value = tab;
  }
}
