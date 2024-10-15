import 'package:get/get.dart';
import 'package:sanchita/common/color_extensions.dart';

class HomePageController extends GetxController {
  RxInt selectedTopics = 0.obs;
  List subArr = [
    {"name": "Transport ", "icon": "assets/img/transport.png", "price": "100"},
    {
      "name": "Eletricity bill",
      "icon": "assets/img/electricity_bills.png",
      "price": "210"
    },
    {"name": "Food ", "icon": "assets/img/food.png", "price": "50"},
    {
      "name": "Entertainment ",
      "icon": "assets/img/entertainment.png",
      "price": "20"
    },
  ];
  List billsArr = [
    {"name": "Transport ", "date": DateTime(2023, 07, 23), "price": "100"},
    {"name": "Eletricity bill", "date": DateTime(2023, 07, 19), "price": "210"},
    {"name": "Food ", "date": DateTime(2023, 07, 24), "price": "50"},
    {"name": "Entertainment ", "date": DateTime(2023, 07, 27), "price": "20"},
  ];
  void toggleSelectedTopics(int index) {
    selectedTopics.value = index;
  }

  List budgetAmount = [
    {
      "name": "Transport ",
      "icon": "assets/img/transport.png",
      "total_budget": "280",
      "spend_amount": "100",
      "color": TColor.secondaryG
    },
    {
      "name": "Eletricity bill",
      "icon": "assets/img/electricity_bills.png",
      "spend_amount": "100",
      "total_budget": "150",
      "color": TColor.secondary50
    },
    {
      "name": "Food ",
      "icon": "assets/img/food.png",
      "spend_amount": "50",
      "total_budget": "50",
      "color": TColor.secondary50
    },
    {
      "name": "Entertainment ",
      "icon": "assets/img/entertainment.png",
      "spend_amount": "120",
      "total_budget": "420",
      "color": TColor.primary10
    },
  ];
}
