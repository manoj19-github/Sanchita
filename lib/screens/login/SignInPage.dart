import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/appLevel.controller.dart';
import 'package:sanchita/cobntrollers/userController.dart';
import 'package:sanchita/common/widgets/AppLogo.dart';
import 'package:sanchita/screens/login/widgets/SignInFormWidget.dart';
import 'package:sanchita/screens/login/widgets/SignInTab.dart';
import 'package:sanchita/screens/login/widgets/SignUpFormWidget.dart';
import 'package:sanchita/screens/login/widgets/SocialSign.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  AppLevelController _appLevelController = Get.put(AppLevelController());
  UserController _userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    print("user logged in >>>>>>>>>>> ${_userController.loggedInUser}");
    var media = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/card_blank_2.png"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
            child: Obx(
          () => Column(
            children: [
              const SizedBox(height: 25),
              AppLogo(),
              const SizedBox(height: 40),
              SignInTab(),
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: _appLevelController.isSignIn.value
                    ? SignInFormWidget()
                    : SignUpFormWidget(),
              ),
              const SizedBox(height: 40),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SocialSignIn())
            ],
          ),
        )),
      )),
    );
  }
}
