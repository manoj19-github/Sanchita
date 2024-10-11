import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/appLevel.controller.dart';

class SignInTab extends StatelessWidget {
  SignInTab({super.key});
  AppLevelController _appLevelController = Get.put(AppLevelController());

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black),
              ),
            ),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: media.size.width * 0.45,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: _appLevelController.isSignIn.value
                                      ? Colors.white
                                      : Colors.black))),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            _appLevelController.toggleSignIn();
                          },
                          child: Text(
                            "SIGN IN ",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      )),
                  Container(
                      width: media.size.width * 0.45,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: _appLevelController.isSignIn.value
                                      ? Colors.black
                                      : Colors.white))),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            _appLevelController.toggleSignIn();
                          },
                          child: Text(
                            "SIGN UP ",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      )),
                ],
              ),
            )),
      ),
    );
  }
}
