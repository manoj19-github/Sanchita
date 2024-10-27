import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/ExpensesChart.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/screens/yearWiseRecords/MonthGroupedRow.dart';
import 'package:sanchita/screens/yearWiseRecords/MonthwiseExpenseRow.dart';
import 'package:sanchita/utils.dart';

class MonthlyExpensesList extends StatelessWidget {
  MonthlyExpensesList({super.key});
  ExpensesChartController _expensesChartController =
      Get.put(ExpensesChartController());

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      width: media.width,
      margin: const EdgeInsets.only(top: 5, bottom: 80),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: TColor.gray70),
      child: Column(
        children: [
          const SizedBox(height: 2),
          Text(
            "Monthwise expenses in ${DateTime.now().year}",
            style: TextStyle(
              color: TColor.gray30,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 2),
          Column(
            children: [
              MonthGroupedRow(),
              MonthGroupedRow(),
              MonthGroupedRow(),
              MonthGroupedRow(),
              MonthGroupedRow(),
              MonthGroupedRow(),
              MonthGroupedRow(),
              MonthGroupedRow(),
              MonthGroupedRow(),
              MonthGroupedRow(),
              MonthGroupedRow(),
              MonthGroupedRow(),
            ],
          ),
        ],
      ),
    );
  }
}
