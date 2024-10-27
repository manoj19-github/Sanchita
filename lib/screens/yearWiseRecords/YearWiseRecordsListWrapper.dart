import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/ExpensesChart.controller.dart';
import 'package:sanchita/cobntrollers/homePage.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/screens/yearWiseRecords/ListTypeRow.dart';
import 'package:sanchita/screens/yearWiseRecords/MonthlyExpensesList.dart';

class YearWiseRecordsListWrapper extends StatelessWidget {
  YearWiseRecordsListWrapper({super.key});
  HomePageController _homePageController = Get.put(HomePageController());
  ExpensesChartController _expensesChartController =
      Get.put(ExpensesChartController());

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            width: media.width,
            margin: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: TColor.gray70),
            child: Column(
              children: [
                const SizedBox(height: 2),
                Text(
                  "Total expenses in ${DateTime.now().year}",
                  style: TextStyle(
                    color: TColor.gray30,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                
                Container(
                  child: ListView.builder(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                      shrinkWrap: true,
                      itemCount: _expensesChartController.subArr.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        var currObj =
                            _expensesChartController.subArr[index] as Map? ??
                                {};
                        return ListTypeRow(
                            expenceObj: currObj, onTapHandler: () {});
                      }),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          MonthlyExpensesList()
        ],
      ),
    );
  }
}
