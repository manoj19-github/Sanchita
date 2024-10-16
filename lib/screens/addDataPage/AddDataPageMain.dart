import 'package:flutter/material.dart';

class AddDataPageMain extends StatelessWidget {
  const AddDataPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text(
            "AddDataPage screen",
            style: TextStyle(color: Colors.white),
          ),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/card_blank_2.png"),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
