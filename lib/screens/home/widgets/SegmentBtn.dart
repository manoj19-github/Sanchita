import 'package:flutter/material.dart';
import 'package:sanchita/common/color_extensions.dart';

class SegmentBtn extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTapHandler;
  SegmentBtn(
      {super.key,
      required this.title,
      required this.onTapHandler,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTapHandler,
        child: Container(
          decoration: isActive
              ? BoxDecoration(
                  border: Border.all(color: TColor.border.withOpacity(0.15)),
                  color: TColor.gray70.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                )
              : null,
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
                color: isActive ? TColor.white : TColor.gray30,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
        ));
  }
}
