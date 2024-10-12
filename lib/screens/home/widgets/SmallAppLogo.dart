import 'package:flutter/material.dart';

class SmallAppLogo extends StatelessWidget {
  const SmallAppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/appLogo.png"), fit: BoxFit.cover),
            // borderRadius: BorderRadius.circular(30),
          ),
        ),
        const SizedBox(width: 5),
        Text(
          "SANCHITA",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        )
      ],
    ));
  }
}
