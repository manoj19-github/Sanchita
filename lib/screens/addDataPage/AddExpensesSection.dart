import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/addNewExpense.controller.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/common/widgets/CTABurtton.dart';
import 'package:sanchita/common/widgets/ImageButton.dart';
import 'package:sanchita/screens/addDataPage/ExpenceSliders.dart';

class AddExpensesSection extends StatelessWidget {
  const AddExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    AddNewExpenseController _addNewExpenseController =
        Get.put(AddNewExpenseController());
    var media = MediaQuery.of(context).size;
    return Container(
      child: Column(children: [
        ExpenceSliders(),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ImageButton(
                    image: "assets/img/minus.png",
                    onTapHandler: () {
                      _addNewExpenseController.addNewExpense(-1);
                    },
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Expense in Rupees",
                      style: TextStyle(
                          fontSize: 12,
                          color: TColor.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 150,
                      child: TextField(
                        style: TextStyle(color: Colors.white, fontSize: 40),
                        cursorColor: TColor.gray60,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Icon(Icons.currency_rupee,
                                size: 36, color: TColor.white),
                          ),
                        ),
                        controller:
                            _addNewExpenseController.newExpencesController,
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ImageButton(
                    image: "assets/img/plus.png",
                    onTapHandler: () {
                      _addNewExpenseController.addNewExpense(1);
                    },
                  ),
                ),
              ]),
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: CTAButton(
              btnColor: TColor.secondary,
              onPressedHandler: () {},
              btnText: "Add Your Expenses",
              btnWidth: media.width * 0.8,
            ))
        //AddDataPageUpper(),
      ]),
    );
  }
}
