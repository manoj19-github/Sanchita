import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:get/get.dart';

class CalendarController extends GetxController {
  var selectedData;
  final EasyInfiniteDateTimelineController controller =
      EasyInfiniteDateTimelineController();
  void onDateChange(dynamic date) {
    selectedData = date;
  }
}
