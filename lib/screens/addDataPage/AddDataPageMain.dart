import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/addNewExpense.controller.dart';
import 'package:sanchita/cobntrollers/homePage.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/common/widgets/CTABurtton.dart';
import 'package:sanchita/common/widgets/ImageButton.dart';
import 'package:sanchita/screens/addDataPage/AddDataPageTab.dart';
import 'package:sanchita/screens/addDataPage/AddDataPageUpper.dart';
import 'package:sanchita/screens/addDataPage/AddExpensesSection.dart';
import 'package:sanchita/screens/addDataPage/CreateBudgetMain.dart';
import 'package:sanchita/screens/addDataPage/ExpenceSliders.dart';
import 'package:sanchita/screens/home/widgets/ExpencesTile.dart';
import 'package:sanchita/screens/home/widgets/HomePageTabs.dart';
import 'package:sanchita/screens/home/widgets/HomePageUpperWidget.dart';
import 'package:sanchita/screens/home/widgets/SegmentBtn.dart';
import 'package:sanchita/screens/home/widgets/UpcomingBills.dart';
import 'package:sanchita/utils.dart';

class AddDataPageMain extends StatelessWidget {
  AddDataPageMain({super.key});
  HomePageController _homePageController = Get.put(HomePageController());
  AddNewExpenseController _addNewExpenseController =
      Get.put(AddNewExpenseController());

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: TColor.gray,
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              AddDataPageTab(),
              // const SizedBox(height: 50),
              Obx(() => Container(
                  child:
                      _addNewExpenseController.currentNewTab.value == "expense"
                          ? AddExpensesSection()
                          : CreateBudgetMain()))

              // HomePageTabs(),
              // Obx(
              //   () => Container(
              //     child: _homePageController.selectedTopics.value == 0
              //         ? Container(
              //             child: ListView.builder(
              //                 padding: EdgeInsets.symmetric(
              //                     horizontal: 15, vertical: 5),
              //                 shrinkWrap: true,
              //                 itemCount: _homePageController.subArr.length,
              //                 physics: const NeverScrollableScrollPhysics(),
              //                 itemBuilder: (context, index) {
              //                   var currObj =
              //                       _homePageController.subArr[index] as Map? ??
              //                           {};
              //                   return ExpencesTile(
              //                       expenceObj: currObj, onTapHandler: () {});
              //                 }),
              //           )
              //         : Container(
              //             child: ListView.builder(
              //                 padding: EdgeInsets.symmetric(
              //                     horizontal: 15, vertical: 5),
              //                 shrinkWrap: true,
              //                 itemCount: _homePageController.billsArr.length,
              //                 physics: const NeverScrollableScrollPhysics(),
              //                 itemBuilder: (context, index) {
              //                   var currObj = _homePageController
              //                           .billsArr[index] as Map? ??
              //                       {};
              //                   return UpcomingBills(
              //                       expenceObj: currObj, onTapHandler: () {});
              //                 }),
              //           ),
              //   ),
              // ),
              // SizedBox(height: 110),
            ],
          ),
        ),
      ),
    );
  }
}
