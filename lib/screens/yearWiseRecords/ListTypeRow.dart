import 'package:flutter/material.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/utils.dart';

class ListTypeRow extends StatelessWidget {
  final Map expenceObj;
  final VoidCallback onTapHandler;
  ListTypeRow({
    super.key,
    required this.expenceObj,
    required this.onTapHandler,
  });

  @override
  Widget build(BuildContext context) {
    double leftAmount = 0;
    double percentageLeftAmount = 0;

    // if (double.tryParse(expenceObj["spend_amount"]) != null &&
    //     double.tryParse(expenceObj["total_budget"]) != null) {
    //   percentageLeftAmount = double.tryParse(expenceObj["spend_amount"])! /
    //       double.tryParse(expenceObj["total_budget"])!;
    //   leftAmount = double.tryParse(expenceObj["total_budget"])! -
    //       double.tryParse(expenceObj["spend_amount"])!;
    // }

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTapHandler,
          child: Container(
            height: 64,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            decoration: BoxDecoration(
              border: Border.all(color: TColor.border.withOpacity(0.1)),
              color: TColor.gray70.withOpacity(0.4),
              borderRadius: BorderRadius.circular(16),
            ),
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      expenceObj["icon"],
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                            expenceObj["name"],
                            style: TextStyle(
                                color: TColor.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  UTILMAIN
                                      .indianRupeesFormat(expenceObj["price"]),
                                  style: TextStyle(
                                      color: TColor.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ]),
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
