import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/addNewExpense.controller.dart';
import 'package:sanchita/cobntrollers/homePage.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/common/widgets/CTABurtton.dart';
import 'package:sanchita/utils.dart';

class ExpenceSliders extends StatelessWidget {
  ExpenceSliders({super.key});
  HomePageController _homePageController = Get.put(HomePageController());
  AddNewExpenseController _addNewExpenseController =
      Get.put(AddNewExpenseController());

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      height: media.height * 0.39,
      width: media.width,
      decoration: BoxDecoration(
        color: TColor.gray70.withOpacity(0.5),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),

        // boxShadow: [
        //   BoxShadow(
        //       color: TColor.gray70.withOpacity(0.25),
        //       blurRadius: 10,
        //       offset: const Offset(0, 4))
        // ],
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Add new expenses",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.white,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "${UTILMAIN.months[DateTime.now().month - 1]},  ${DateTime.now().year}",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //     Text(
                //       "New Expenses",
                //       style: TextStyle(
                //         color: TColor.gray30,
                //         fontSize: 25,
                //         fontWeight: FontWeight.w700,
                //       ),
                //     ),
                //   ],
                // ),

                SizedBox(
                  width: media.width,
                  height: media.height * 0.28,
                  child: CarouselSlider.builder(
                      options: CarouselOptions(
                        autoPlay: false,
                        aspectRatio: 1,
                        enableInfiniteScroll: false,
                        viewportFraction: 0.65,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                      ),
                      itemCount: _homePageController.subArr.length,
                      itemBuilder: (BuildContext _context, int itemIndex,
                          int pageViewIndex) {
                        var sObj =
                            _homePageController.subArr[itemIndex] as Map? ?? {};
                        return Container(
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(sObj["icon"],
                                  width: media.width * 0.5,
                                  height: media.height * 0.20,
                                  fit: BoxFit.fitHeight),
                              const Spacer(),
                              Text(
                                sObj["name"],
                                style: TextStyle(
                                  color: TColor.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
