import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/appLogo.png"), fit: BoxFit.cover),
            // borderRadius: BorderRadius.circular(30),
          ),
        ),
        const SizedBox(width:10),
        Text("SANCHITA",style:TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),)
      ],
    ));
  }
}
