import 'package:flutter/material.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/common/widgets/ChartData.dart';
import 'package:sanchita/screens/yearWiseRecords/ExpensesPieChart.dart';

class YearWiseChartWrapper extends StatelessWidget {
  const YearWiseChartWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 10),
          ExpensesPieChart(),
          const SizedBox(height: 5),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: TColor.gray70),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      "Monthwise expenses in ${DateTime.now().year}",
                      style: TextStyle(
                        color: TColor.gray30,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  BarChartSample4(),
                ],
              )),
          const SizedBox(height: 90),
        ],
      ),
    );
  }
}
