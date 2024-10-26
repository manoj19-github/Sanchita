import 'package:flutter/material.dart';
import 'package:sanchita/common/color_extensions.dart';

class ImageButton extends StatelessWidget {
  final String image;

  final VoidCallback onTapHandler;
  ImageButton({
    super.key,
    required this.image,
    required this.onTapHandler,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTapHandler,
        child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: TColor.border.withOpacity(0.15)),
              color: TColor.gray70.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Image.asset(image,
                width: 50, height: 50, color: TColor.gray70)));
  }
}
