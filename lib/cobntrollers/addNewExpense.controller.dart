import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewExpenseController extends GetxController {
  @override
  void dispose() {
    newExpencesController.dispose();
    super.dispose();
  }

  RxString currentNewTab = "expense".obs;
  TextEditingController newExpencesController =
      TextEditingController(text: "10.0");
  void addNewExpense(int price) {
    double existingPrice = double.tryParse(newExpencesController.text) ?? 0;
    newExpencesController.text = (existingPrice + price).toString();
  }

  void toggleExpenseTab(String tab) {
    currentNewTab.value = tab;
  }
}
