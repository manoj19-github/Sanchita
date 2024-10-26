import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:get/get.dart';

class CalendarController extends GetxController {
  var selectedData = DateTime.now().obs;
  var onTapSelectedDate =
      DateTime(DateTime.now().year, DateTime.now().month - 1, 1).obs;
  final EasyInfiniteDateTimelineController controller =
      EasyInfiniteDateTimelineController();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  void onDateChange(dynamic date) {
    selectedData.value = date;
    onTapSelectedDate.value = date;
  }
}
