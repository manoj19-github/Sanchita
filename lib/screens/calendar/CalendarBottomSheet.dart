import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/calendar.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/utils.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarBottomSheet extends StatefulWidget {
  final BuildContext parentContext;

  CalendarController calendarController = Get.put(CalendarController());
  DateTime focusedDate = DateTime.now();
  CalendarBottomSheet({super.key, required this.parentContext});

  @override
  State<CalendarBottomSheet> createState() => _CalendarBottomSheetState();
}

class _CalendarBottomSheetState extends State<CalendarBottomSheet> {
  // @override
  // void initState() {
  //   super.initState();
  //   widget.focusedDate = widget.calendarController.selectedData;
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: TColor.gray80),
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      child: Icon(Icons.close, color: TColor.white),
                      onTap: () {
                        Navigator.pop(widget.parentContext);
                      })
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "${UTILMAIN.months[DateTime.now().month - 1]} ${DateTime.now().year}",
                    style: TextStyle(
                        color: TColor.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ],
            ),
            TableCalendar(
              pageJumpingEnabled: false,
              headerVisible: false,

              headerStyle:
                  HeaderStyle(decoration: BoxDecoration(color: Colors.red)),
              // daysOfWeekStyle:
              //     DaysOfWeekStyle(decoration: BoxDecoration(color: Colors.red)),
              daysOfWeekVisible: false,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: widget.focusedDate,
              onPageChanged: (focusedDay) {
                print("date in current calendar >>>>>>>>> ${focusedDay}");
                setState(() {
                  widget.focusedDate = focusedDay;
                });
              },
              onDaySelected: (_selectedDay, _focusedDay) {
                widget.calendarController.onDateChange(_focusedDay);
                setState(() {
                  widget.focusedDate = _selectedDay;
                });
                print(
                    "date in current calendar >>>>>>>>> ${_selectedDay} ${_focusedDay}");
              },
              calendarStyle: CalendarStyle(
                  defaultTextStyle: TextStyle(color: TColor.white),
                  outsideDaysVisible: false),
            ),
          ],
        ),
      ),
    );
  }
}
