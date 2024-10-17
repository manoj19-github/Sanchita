import 'package:flutter/material.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/screens/calendar/CalendarUpperPart.dart';
import 'package:sanchita/screens/home/widgets/StatusButton.dart';

class CalendarScreenUpperWidget extends StatelessWidget {
  const CalendarScreenUpperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      height: media.height * 0.45,
      width: media.width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: TColor.gray70.withOpacity(0.5),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CalendarUpperPart()),
    );
  }
}
