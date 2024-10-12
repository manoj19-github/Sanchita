import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/homePage.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/screens/home/widgets/ExpencesTile.dart';
import 'package:sanchita/screens/home/widgets/HomePageTabs.dart';
import 'package:sanchita/screens/home/widgets/HomePageUpperWidget.dart';
import 'package:sanchita/screens/home/widgets/SegmentBtn.dart';
import 'package:sanchita/screens/home/widgets/UpcomingBills.dart';

class HomeScreenMain extends StatelessWidget {
  HomeScreenMain({super.key});
  HomePageController _homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.gray,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomePageUpperWidget(),
              HomePageTabs(),
              Obx(
                () => Container(
                  child: _homePageController.selectedTopics.value == 0
                      ? Container(
                          child: ListView.builder(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              shrinkWrap: true,
                              itemCount: _homePageController.subArr.length,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                var currObj =
                                    _homePageController.subArr[index] as Map? ??
                                        {};
                                return ExpencesTile(
                                    expenceObj: currObj, onTapHandler: () {});
                              }),
                        )
                      : Container(
                          child: ListView.builder(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              shrinkWrap: true,
                              itemCount: _homePageController.billsArr.length,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                var currObj = _homePageController
                                        .billsArr[index] as Map? ??
                                    {};
                                return UpcomingBills(
                                    expenceObj: currObj, onTapHandler: () {});
                              }),
                        ),
                ),
              ),
              SizedBox(height: 110),
            ],
          ),
        ),
      ),
    );
  }
}
