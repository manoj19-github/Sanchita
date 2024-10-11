import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/homePage.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/screens/home/widgets/ExpencesTile.dart';
import 'package:sanchita/screens/home/widgets/SegmentBtn.dart';

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
              Container(
                height: media.height * 0.45,
                decoration: BoxDecoration(
                    color: TColor.gray70.withOpacity(0.5),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: Obx(
                  () => Row(
                    children: [
                      Expanded(
                        child: SegmentBtn(
                          title: "Your Expences",
                          onTapHandler: () {
                            _homePageController.toggleSelectedTopics(0);
                          },
                          isActive:
                              _homePageController.selectedTopics.value == 0,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: SegmentBtn(
                          title: "Your Expences",
                          onTapHandler: () {
                            _homePageController.toggleSelectedTopics(1);
                          },
                          isActive:
                              _homePageController.selectedTopics.value == 1,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    shrinkWrap: true,
                    itemCount: _homePageController.subArr.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var currObj =
                          _homePageController.subArr[index] as Map? ?? {};
                      return ExpencesTile(
                          expenceObj: currObj, onTapHandler: () {});
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
