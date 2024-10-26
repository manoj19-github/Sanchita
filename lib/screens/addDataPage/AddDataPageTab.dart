import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/addNewExpense.controller.dart';
import 'package:sanchita/common/color_extensions.dart';

class AddDataPageTab extends StatelessWidget {
  AddNewExpenseController _addNewExpenseController =
      Get.put(AddNewExpenseController());
  AddDataPageTab({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: TColor.gray70.withOpacity(0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(
            //     Icons.arrow_back_ios,
            //     size: 25,
            //     color: TColor.gray30,
            //   ),
            // ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => InkWell(
                      onTap: () {
                        _addNewExpenseController.toggleExpenseTab("expense");
                      },
                      child: Container(
                        width: media.width * 0.39,
                        decoration: BoxDecoration(
                          color: TColor.gray70.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(6),
                          border:
                              _addNewExpenseController.currentNewTab.value ==
                                      "expense"
                                  ? Border.all(
                                      color: TColor.gray30.withOpacity(0.7))
                                  : Border.all(
                                      color: TColor.gray70.withOpacity(0.5)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            "Expenses",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: TColor.gray30,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Obx(
                    () => InkWell(
                      onTap: () {
                        _addNewExpenseController.toggleExpenseTab("budgets");
                      },
                      child: Container(
                        width: media.width * 0.39,
                        decoration: BoxDecoration(
                          color: TColor.gray70.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(6),
                          border:
                              _addNewExpenseController.currentNewTab.value ==
                                      "budgets"
                                  ? Border.all(
                                      color: TColor.gray30.withOpacity(0.7))
                                  : Border.all(
                                      color: TColor.gray70.withOpacity(0.5)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            "Budgets",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: TColor.gray30,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
