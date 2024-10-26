import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/ExpensesChart.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/common/widgets/ChartData.dart';
import 'package:sanchita/screens/yearWiseRecords/ExpensesPieChart.dart';
import 'package:sanchita/screens/yearWiseRecords/YearWiseChartWrapper.dart';
import 'package:sanchita/screens/yearWiseRecords/YearWiseRecordsListWrapper.dart';

class YearWiseRecordsMain extends StatelessWidget {
  const YearWiseRecordsMain({super.key});
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    ExpensesChartController _expensesChartController =
        Get.put(ExpensesChartController());
    return Scaffold(
      backgroundColor: TColor.gray,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 10),
          child: Obx(
            () => Column(
              children: [
                const SizedBox(height: 5),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10),
                      color: TColor.gray70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          _expensesChartController.toggleExpensesMode("chart");
                        },
                        child: Container(
                          width: media.width * 0.39,
                          decoration: BoxDecoration(
                            color: TColor.gray70.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(6),
                            border: _expensesChartController.chartType.value ==
                                    "chart"
                                ? Border.all(
                                    color: TColor.gray30.withOpacity(0.7))
                                : Border.all(
                                    color: TColor.gray70.withOpacity(0.5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              "Chart View",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: TColor.gray30,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _expensesChartController.toggleExpensesMode("list");
                        },
                        child: Container(
                          width: media.width * 0.39,
                          decoration: BoxDecoration(
                            color: TColor.gray70.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(6),
                            border: _expensesChartController.chartType.value ==
                                    "list"
                                ? Border.all(
                                    color: TColor.gray30.withOpacity(0.7))
                                : Border.all(
                                    color: TColor.gray70.withOpacity(0.5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              "List View",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: TColor.gray30,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                _expensesChartController.chartType.value == "chart"
                    ? YearWiseChartWrapper()
                    : YearWiseRecordsListWrapper()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
