import 'package:get/get.dart';

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
}
