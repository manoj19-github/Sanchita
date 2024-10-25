import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/calendar.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/screens/calendar/CalendarBottomSheet.dart';
import 'package:sanchita/screens/calendar/CalendarTimeLine.dart';
import 'package:sanchita/utils.dart';

class CalendarUpperPart extends StatelessWidget {
  CalendarUpperPart({super.key});
  CalendarController _calendarController = Get.put(CalendarController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Calendar",
              style: TextStyle(
                  color: TColor.gray30,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(width: 8),
            Text(
              "(Expense Schedule)",
              style: TextStyle(
                  color: TColor.gray10,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              "3 expenses for this  month",
              style: TextStyle(
                  color: TColor.gray30,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (ctx) => CalendarBottomSheet(
                          parentContext: ctx,
                        ));
              },
              child: Container(
                decoration: true
                    ? BoxDecoration(
                        border:
                            Border.all(color: TColor.border.withOpacity(0.15)),
                        color: TColor.gray70.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16),
                      )
                    : null,
                alignment: Alignment.center,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Obx(
                        () => Text(
                          UTILMAIN.months[
                              _calendarController.selectedData.value.month - 1],
                        style: TextStyle(
                            color: TColor.gray30,
                              
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                        ),
                      ),
                      Icon(Icons.expand_more, size: 16, color: TColor.gray30)
                    ],
                  ),
                ),
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        const SizedBox(height: 30),
        CalendarTimeline()
      ],
    );
  }
}
