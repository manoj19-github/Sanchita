import 'package:get/get.dart';
import 'package:sanchita/common/color_extensions.dart';

class ExpensesChartController extends GetxController {
  List subArr = [
    {
      "name": "Total Expenses ",
      "icon": "assets/img/expenses12.png",
      "price": "100",
    },
    {
      "name": "Total Budget",
      "icon": "assets/img/BUDGETiCONS.png",
      "price": "210",
    },
    {
      "name": "Total Savings",
      "icon": "assets/img/savings123.png",
      "price": "50",
    },
    {
      "name": "Total Income",
      "icon": "assets/img/income.png",
      "price": "20",
    },
  ];
  RxString chartType = "chart".obs;

  void toggleExpensesMode(String tab) {
    chartType.value = tab;
  }
}
