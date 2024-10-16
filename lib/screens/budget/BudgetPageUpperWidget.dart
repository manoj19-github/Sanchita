import 'package:flutter/material.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/screens/budget/BudgetTrackerWidget.dart';
import 'package:sanchita/utils.dart';

class BudgetPageUpperWidget extends StatelessWidget {
  const BudgetPageUpperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Stack(alignment: Alignment.center, children: [
        Positioned(
          child: Container(
            width: media.size.width * 0.55,
            height: media.size.height * 0.2,
            child: CustomPaint(
              painter: BudgetTrackerWidget(
                  end: 50,
                  width: 10,
                  bgWidth: 8,
                  drawArcs: [
                    ArcValueModel(color: TColor.secondaryG, value: 30),
                    ArcValueModel(color: TColor.secondary, value: 50),
                    ArcValueModel(color: TColor.primary10, value: 70)
                  ]),
            ),
          ),
        ),
        Column(children: [
          Text(
            UTILMAIN.indianRupeesFormat("2750"),
            style: TextStyle(
                color: TColor.white, fontSize: 30, fontWeight: FontWeight.w700),
          ),
          Text(
            "of " + UTILMAIN.indianRupeesFormat("4350") + " budget",
            style: TextStyle(
                color: TColor.gray30,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ])
      ]),
    );
  }
}
