import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:get/get.dart';

class CalendarController extends GetxController {
  var selectedData;
  final EasyInfiniteDateTimelineController controller =
      EasyInfiniteDateTimelineController();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    selectedData = DateTime.now();
  }
  void onDateChange(dynamic date) {
    selectedData = date;
  }
}
