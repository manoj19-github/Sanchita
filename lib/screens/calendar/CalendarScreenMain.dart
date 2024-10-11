import 'package:flutter/material.dart';

class CalendarScreenMain extends StatelessWidget {
  const CalendarScreenMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text(
            "Calendar screen",
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
