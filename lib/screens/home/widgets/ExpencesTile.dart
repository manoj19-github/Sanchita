import 'package:flutter/material.dart';
import 'package:sanchita/common/color_extensions.dart';

class ExpencesTile extends StatelessWidget {
  final Map expenceObj;
  final VoidCallback onTapHandler;
  ExpencesTile({
    super.key,
    required this.expenceObj,
    required this.onTapHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 9),
      child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTapHandler,
          child: Container(
            height: 64,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              border: Border.all(color: TColor.border.withOpacity(0.15)),
              //    color: TColor.gray70.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
            ),
            alignment: Alignment.center,
            child: Row(
              children: [
                Image.asset(
                  expenceObj["icon"],
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    expenceObj["name"],
                    style: TextStyle(
                        color: TColor.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(width: 8),
                Row(
                  children: [
                    Icon(Icons.currency_rupee_outlined,
                        size: 13, color: TColor.white),
                    const SizedBox(width: 1),
                    Text(
                      expenceObj["price"],
                      style: TextStyle(
                          color: TColor.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
