import 'package:flutter/material.dart';

class CTAButton extends StatelessWidget {
  final double btnWidth;
  final dynamic btnColor;
  final String btnText;
  final VoidCallback onPressedHandler;
  const CTAButton(
      {super.key,
      required this.btnWidth,
      required this.btnColor,
      required this.onPressedHandler,
      required this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: btnWidth,
      decoration: BoxDecoration(
          color: btnColor, borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: onPressedHandler,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Center(
            child: Text(
              btnText,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
