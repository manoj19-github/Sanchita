import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/calendar.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/utils.dart';


class CalendarTimeline extends StatefulWidget {
  CalendarTimeline({super.key});
  DateTime currentDate = DateTime.now();
  CalendarController calendarController = Get.put(CalendarController());

  @override
  State<CalendarTimeline> createState() => _CalendarTimeState();
}

// class _CalendarTimeState extends State<CalendarTime> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class _CalendarTimeState extends State<CalendarTimeline> {
  

  @override
  Widget build(BuildContext context) {
    print("current Date >>>>>>>>>>>>>> , ${widget.currentDate}");
    print(
        "selected Date >>>>>>>>>>>>>> , ${widget.calendarController.selectedData}");
    return Container(
      child: EasyInfiniteDateTimeLine(
        showTimelineHeader: false,
        selectionMode: const SelectionMode.autoCenter(),
        timeLineProps: const EasyTimeLineProps(
          //hPadding: 16.0, // padding from left and right
          separatorPadding: 16.0, // padding between days
          // decoration: BoxDecoration()
        ),
        controller: widget.calendarController.controller,
        activeColor: Colors.white,
        firstDate: DateTime.utc(DateTime.now().year, DateTime.now().month, 1),
        focusDate: widget.calendarController.selectedData,
        
        lastDate: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime(DateTime.now().month + 1).subtract(Duration(days: 1)).day),
            
        onDateChange: (selectedDate) {
          print("hit date ${selectedDate}");

          setState(() {
            widget.calendarController.selectedData = selectedDate;
            widget.currentDate = selectedDate;
          });
        },
        
        dayProps: const EasyDayProps(
          dayStructure: DayStructure.dayStrDayNum,
          todayHighlightStyle: TodayHighlightStyle.withBackground,
          activeDayStyle: DayStyle(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff3371FF),
                  Color(0xff8426D6),
                ],
              ),
            ),
          ),
          inactiveDayStyle: DayStyle(
            borderRadius: 48.0,
            dayNumStyle: TextStyle(
              fontSize: 18.0,
            ),
          ),
          // You must specify the width in this case.
          width: 60.0,
          // The height is not required in this case.
          height: 110.0,
        ),
        itemBuilder: (
          BuildContext context,
          DateTime date,
          bool isSelected,
          VoidCallback onTap,
        ) {
          return InkResponse(
            
            // You can use `InkResponse` to make your widget clickable.
            // The `onTap` callback responsible for triggering the `onDateChange`
            // callback and animating to the selected date if the `selectionMode` is
            // SelectionMode.autoCenter() or SelectionMode.alwaysFirst().
            onTap: onTap,
            child: CircleAvatar(
              backgroundColor: UTILMAIN.isToday(date)
                  ? TColor.gray60.withOpacity(0.7)
                  : isSelected ||
                          widget.calendarController.selectedData
                                  .compareTo(date) ==
                              0
                      ? TColor.secondary
                      : TColor.gray30.withOpacity(0.8),
              radius: 10.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Flexible(
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(
                        color: isSelected ? Colors.white : null,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      EasyDateFormatter.shortDayName(date, "en_US"),
                      style: TextStyle(
                        color: isSelected ? Colors.white : null,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Icon(Icons.bookmark,
                        size: 6, color: Colors.greenAccent),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
