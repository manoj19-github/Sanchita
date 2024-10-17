import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/homePage.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/screens/calendar/CalendarScreenUpperWidget.dart';
import 'package:sanchita/screens/calendar/ExpenceCell.dart';
import 'package:sanchita/utils.dart';

class CalendarScreenMain extends StatelessWidget {
  CalendarScreenMain({super.key});
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
              CalendarScreenUpperWidget(),
              const SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "January",
                          style: TextStyle(
                              fontSize: 20,
                              color: TColor.white,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          UTILMAIN.indianRupeesFormat("454"),
                          style: TextStyle(
                              fontSize: 20,
                              color: TColor.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "01.02.2023",
                          style: TextStyle(
                              fontSize: 12,
                              color: TColor.gray30,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "in upcoming bills",
                          style: TextStyle(
                              fontSize: 12,
                              color: TColor.gray30,
                              fontWeight: FontWeight.w500),
                        ),
                      ])
                ]),
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1),
                itemCount: _homePageController.subArr.length,
                itemBuilder: (context, index) {
                  var sObj = _homePageController.subArr[index] as Map? ?? {};
                  return ExpenceCell(
                    expenceObj: sObj,
                    onTapHandler: () {},
                  );
                },
              ),
              const SizedBox(height: 100)
            ],
          ),
        ),
      ),
    );
  }
}
