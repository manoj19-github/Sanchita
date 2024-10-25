import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:get/get.dart';

class CalendarController extends GetxController {
  var selectedData = DateTime.now().obs;
  final EasyInfiniteDateTimelineController controller =
      EasyInfiniteDateTimelineController();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  void onDateChange(dynamic date) {
    selectedData.value = date;
  }
}
