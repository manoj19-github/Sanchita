import 'package:flutter/material.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/screens/yearWiseRecords/MonthwiseExpenseRow.dart';
import 'package:sanchita/utils.dart';

class MonthGroupedRow extends StatelessWidget {
  const MonthGroupedRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: TColor.border.withOpacity(0.1)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const SizedBox(height: 1),
          Row(
            children: [
              const SizedBox(width: 10),
              Text(
                "${UTILMAIN.months[DateTime.now().month - 1]} , ${DateTime.now().year}",
                style: TextStyle(
                  color: TColor.gray30,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          MonthwiseExpenseRow(),
          MonthwiseExpenseRow(),
          MonthwiseExpenseRow(),
          MonthwiseExpenseRow(),
          MonthwiseExpenseRow(),
          MonthwiseExpenseRow(),
          MonthwiseExpenseRow(),
          MonthwiseExpenseRow(),
          MonthwiseExpenseRow(),
          MonthwiseExpenseRow(),
          MonthwiseExpenseRow(),
          MonthwiseExpenseRow(),
        ],
      ),
    );
  }
}
