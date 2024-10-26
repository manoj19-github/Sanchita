import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/homePage.controller.dart';
import 'package:sanchita/screens/home/widgets/SegmentBtn.dart';

class AddDataPageTabs extends StatelessWidget {
  AddDataPageTabs({super.key});
  HomePageController _homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(20)),
      child: Obx(
        () => Row(
          children: [
            Expanded(
              child: SegmentBtn(
                title: "Your Expenses",
                onTapHandler: () {
                  _homePageController.toggleSelectedTopics(0);
                },
                isActive: _homePageController.selectedTopics.value == 0,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: SegmentBtn(
                title: "Upcoming biils",
                onTapHandler: () {
                  _homePageController.toggleSelectedTopics(1);
                },
                isActive: _homePageController.selectedTopics.value == 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
