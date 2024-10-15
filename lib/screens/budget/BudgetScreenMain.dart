import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/homePage.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/common/widgets/AppLogo.dart';
import 'package:sanchita/common/widgets/BudgetRow.dart';
import 'package:sanchita/screens/home/widgets/ExpencesTile.dart';
import 'package:sanchita/screens/home/widgets/HomePageTabs.dart';
import 'package:sanchita/screens/home/widgets/HomePageUpperWidget.dart';
import 'package:sanchita/screens/home/widgets/SegmentBtn.dart';
import 'package:sanchita/screens/home/widgets/UpcomingBills.dart';

class BudgetScreenMain extends StatelessWidget {
  BudgetScreenMain({super.key});
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
              const SizedBox(height: 10),
              // HomePageUpperWidget(),
              // HomePageTabs(),

              InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {},
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: TColor.border.withOpacity(0.15),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your budgets are on track",
                        style: TextStyle(
                            color: TColor.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                    shrinkWrap: true,
                    itemCount: _homePageController.budgetAmount.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var currObj =
                          _homePageController.budgetAmount[index] as Map? ?? {};
                      return BudgetRow(
                          expenceObj: currObj, onTapHandler: () {});
                    }),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {},
                  child: DottedBorder(
                    dashPattern: const [3, 3],
                    strokeWidth: 1,
                    borderType: BorderType.RRect,
                    radius: Radius.circular(12),
                    color: TColor.gray40,
                    child: Container(
                      height: 55,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          
                          
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Add new category",
                            style: TextStyle(
                                color: TColor.gray30,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(width: 10),
                          Image.asset("assets/img/add.png",
                              width: 15, height: 15, color: TColor.gray30)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
