import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/calendar.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/screens/calendar/CalendarUpperPart.dart';
import 'package:sanchita/screens/home/widgets/StatusButton.dart';

class CalendarScreenUpperWidget extends StatelessWidget {
  CalendarScreenUpperWidget({super.key});
  CalendarController _calendarController = Get.put(CalendarController());


  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      height: media.height * 0.44,
      width: media.width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: TColor.gray70.withOpacity(0.9),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Obx(
          () => Column(
            children: [
              CalendarUpperPart(),
              _calendarController.selectedData.value.year >=
                          DateTime.now().year &&
                      _calendarController.selectedData.value.month >=
                          DateTime.now().month &&
                      _calendarController.selectedData.value.day >=
                          DateTime.now().day
                  ? InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {},
                      child: Container(
                        height: 50,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: TColor.border.withOpacity(0.15),
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Add your upcoming bills",
                              style: TextStyle(
                                  color: TColor.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(width: 12),
                            Icon(Icons.price_change_rounded,
                                color: TColor.white, size: 25)
                          ],
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),

    );
  }
}
