import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/homePage.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/screens/yearWiseRecords/ListTypeRow.dart';

class YearWiseRecordsListWrapper extends StatelessWidget {
  YearWiseRecordsListWrapper({super.key});
  HomePageController _homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      width: media.width,
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: TColor.gray70),
      child: Column(
        children: [
          Container(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                shrinkWrap: true,
                itemCount: _homePageController.budgetAmount.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  var currObj =
                      _homePageController.budgetAmount[index] as Map? ?? {};
                  return ListTypeRow(expenceObj: currObj, onTapHandler: () {});
                }),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
