import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/authController.dart';
import 'package:sanchita/common/widgets/CTABurtton.dart';
import 'package:sanchita/common/widgets/MyTextField.dart';
import 'package:sanchita/utils.dart';

class SignUpFormWidget extends StatelessWidget {
  SignUpFormWidget({super.key});
  AuthController _authController = Get.put(AuthController());

  void handleSignup() async {
    if (_authController.emailController.text.isEmpty ||
        _authController.emailController.text == null ||
        !UTILMAIN.regExp.hasMatch(_authController.emailController.text)) {
      Fluttertoast.showToast(
          msg: "Invalid email", backgroundColor: Colors.red[500]);
      return;
    }
    if (_authController.passwordController.text.isEmpty ||
        _authController.passwordController.text == null ||
        _authController.passwordController.text.length < 6) {
      Fluttertoast.showToast(
          msg: "Password must be atleast 6 characters",
          backgroundColor: Colors.red[500]);
      return;
    }
    if (_authController.nameController.text.isEmpty ||
        _authController.nameController.text == null) {
      Fluttertoast.showToast(
          msg: "Name is required", backgroundColor: Colors.red[500]);
      return;
    }
    if (_authController.phoneController.text.isEmpty ||
        _authController.phoneController.text == null) {
      Fluttertoast.showToast(
          msg: "Phone is required", backgroundColor: Colors.red[500]);
      return;
    }

    await _authController.onSignupHandler();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
        child: Column(
      children: [
        MyTextField(
            hintText: "Enter Name",
            inputIcon: Icon(Icons.person_outline, color: Colors.white),
            onChange: _authController.nameController,
            textInputType: TextInputType.name),
        const SizedBox(height: 20),
        MyTextField(
            inputIcon: Icon(Icons.email_outlined, color: Colors.white),
            hintText: "Enter Email",
            onChange: _authController.emailController,
            textInputType: TextInputType.emailAddress),
        const SizedBox(height: 20),
        MyTextField(
            inputIcon: Icon(Icons.phone_android_outlined, color: Colors.white),
            hintText: "Enter Phone",
            onChange: _authController.phoneController,
            textInputType: TextInputType.phone),
        const SizedBox(height: 20),
        MyTextField(
            hintText: "Enter Password",
            inputIcon: Icon(Icons.password_outlined, color: Colors.white),
            customObscureText: true,
            onChange: _authController.passwordController,
            textInputType: TextInputType.visiblePassword),
        const SizedBox(height: 50),
        CTAButton(
            btnWidth: media.width * 0.9,
            btnColor: Colors.blue[600],
            btnText: "Sign Up",
            onPressedHandler: () {
              handleSignup();
            })
      ],
    ));
  }
}
