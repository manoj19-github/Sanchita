import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:sanchita/common/color_extensions.dart';

class ExpensesPieChart extends StatelessWidget {
  ExpensesPieChart({super.key});
  final colorList = <Color>[
    const Color(0xfffdcb6e),
    const Color(0xff0984e3),
    const Color(0xfffd79a8),
    const Color(0xffe17055),
    const Color(0xff6c5ce7),
  ];
  final dataMap = <String, double>{
    "Flutter": 5,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: TColor.gray70),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Column(children: [
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
            // PieChart(
            //   legendOptions: const LegendOptions(
            //       legendPosition: LegendPosition.left,
            //       legendTextStyle:
            //           TextStyle(fontSize: 12, color: Colors.white)),
            //   dataMap: dataMap,
            //   chartType: ChartType.ring,
            //   baseChartColor: Colors.grey[50]!.withOpacity(0.15),
            //   colorList: colorList,
            //   chartValuesOptions: const ChartValuesOptions(
            //     showChartValuesInPercentage: true,
            //   ),
            //   totalValue: 20,
            // ),
          ]),
        ),
      ],
    );
  }
}
