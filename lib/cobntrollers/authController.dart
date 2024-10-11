import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/appLevel.controller.dart';
import 'package:sanchita/cobntrollers/userController.dart';

class AuthController extends GetxController {
  AppLevelController _appDataController = Get.put(AppLevelController());
  UserController _userController = Get.put(UserController());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  void clearAllTextField() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    phoneController.clear();
  }

  Future<void> createAccount(
      {required String emailAddress, required String userPassword}) async {
    try {
      _appDataController.isLoading.value = true;
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailAddress, password: userPassword);
      if (userCredential.user != null)
        _userController.storeLoginDetails(userCredential.user!);

      _appDataController.isLoading.value = false;
      clearAllTextField();
      Fluttertoast.showToast(
          msg: "Account Created Successfully",
          backgroundColor: Colors.green[500]);
    } on FirebaseAuthException catch (error) {
      _appDataController.isLoading.value = false;
      switch (error.code) {
        case 'email-already-in-use':
          {
            Fluttertoast.showToast(
                msg: 'Email already in use', backgroundColor: Colors.red[500]);
          }
        case 'invalid-email':
          {
            Fluttertoast.showToast(
                msg: 'Invalid email', backgroundColor: Colors.red[500]);
          }
        case 'weak-password':
          {
            Fluttertoast.showToast(
                msg: 'Weak password', backgroundColor: Colors.red[500]);
          }
        case 'operation-not-allowed':
          {
            Fluttertoast.showToast(
                msg: 'operation-not-allowed', backgroundColor: Colors.red[500]);
          }
        default:
          {
            Fluttertoast.showToast(
                msg: 'Something went wrong', backgroundColor: Colors.red[500]);
          }
      }
    } catch (error) {
      Fluttertoast.showToast(
          msg: 'Something went wrong', backgroundColor: Colors.red[500]);
    }
  }

  Future<void> onSignupHandler() async {
    return await createAccount(
        emailAddress: emailController.text,
        userPassword: passwordController.text);
  }
}
