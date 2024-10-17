import 'package:flutter/material.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/utils.dart';

class ExpenceCell extends StatelessWidget {
  final Map expenceObj;
  final VoidCallback onTapHandler;
  ExpenceCell({
    super.key,
    required this.expenceObj,
    required this.onTapHandler,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTapHandler,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(color: TColor.border.withOpacity(0.15)),
          color: TColor.gray60.withOpacity(0.2),
          borderRadius: BorderRadius.circular(16),
        ),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              expenceObj["icon"],
              width: 70,
              height: 70,
            ),
            const SizedBox(height: 3),
            Text(
              expenceObj["name"],
              style: TextStyle(
                  color: TColor.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 3),
            Text(
              UTILMAIN.indianRupeesFormat(expenceObj["price"]),
              style: TextStyle(
                  color: TColor.gray30,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
