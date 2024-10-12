import 'package:flutter/material.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/utils.dart';

class StatusButton extends StatelessWidget {
  final String title;
  final String? subTitle;
  final Color statusColor;
  final String value;
  final VoidCallback onTapHandler;
  StatusButton(
      {super.key,
      required this.title,
      required this.value,
      required this.onTapHandler,
      required this.statusColor,
      this.subTitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapHandler,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 62,
            decoration: BoxDecoration(
              border: Border.all(color: TColor.border.withOpacity(0.15)),
              color: TColor.gray70.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: TColor.gray30,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                Offstage(
                  offstage: subTitle == null,
                  child: Text(
                    subTitle ?? "",
                    style: TextStyle(
                        color: TColor.gray10,
                        fontSize: 10,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Text(
                  UTILMAIN.indianRupeesFormat(value),
                  style: TextStyle(
                      color: TColor.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Container(
            width: 60,
            height: 1,
            decoration: BoxDecoration(
              color: statusColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
