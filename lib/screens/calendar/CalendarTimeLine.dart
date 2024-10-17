import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/calendar.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/utils.dart';

class CalendarTimeline extends StatelessWidget {
  CalendarTimeline({super.key});
  CalendarController _calendarController = Get.put(CalendarController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: EasyInfiniteDateTimeLine(
        timeLineProps: const EasyTimeLineProps(
          //hPadding: 16.0, // padding from left and right
          separatorPadding: 16.0, // padding between days
          // decoration: BoxDecoration()
        ),
        controller: _calendarController.controller,
        firstDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day),
        focusDate: _calendarController.selectedData,
        lastDate: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime(DateTime.now().month + 1).subtract(Duration(days: 1)).day),
        onDateChange: (selectedDate) {
          _calendarController.onDateChange(selectedDate);
        },
        dayProps: const EasyDayProps(
          // You must specify the width in this case.
          width: 60.0,
          // The height is not required in this case.
          height: 110.0,
        ),
        // itemBuilder: (
        //   BuildContext context,
        //   DateTime date,
        //   bool isSelected,
        //   VoidCallback onTap,
        // ) {
        //   return InkResponse(
        //     // You can use `InkResponse` to make your widget clickable.
        //     // The `onTap` callback responsible for triggering the `onDateChange`
        //     // callback and animating to the selected date if the `selectionMode` is
        //     // SelectionMode.autoCenter() or SelectionMode.alwaysFirst().
        //     onTap: onTap,
        //     child: CircleAvatar(
        //       // use `isSelected` to specify whether the widget is selected or not.
        //       backgroundColor: UTILMAIN.isToday(date)
        //           ? TColor.gray30.withOpacity(0.3)
        //           : TColor.gray30.withOpacity(0.8),
        //       radius: 10.0,
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Flexible(
        //             child: Text(
        //               date.day.toString(),
        //               style: TextStyle(
        //                 color: isSelected ? Colors.white : null,
        //               ),
        //             ),
        //           ),
        //           Flexible(
        //             child: Text(
        //               EasyDateFormatter.shortDayName(date, "en_US"),
        //               style: TextStyle(
        //                 color: isSelected ? Colors.white : null,
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   );
        // },
      ),
    );
  }
}
