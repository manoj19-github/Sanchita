import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/authController.dart';
import 'package:sanchita/cobntrollers/signIn.controller.dart';
import 'package:sanchita/common/widgets/CTABurtton.dart';
import 'package:sanchita/common/widgets/MyTextField.dart';
import 'package:sanchita/utils.dart';

class SignInFormWidget extends StatelessWidget {
  SignInFormWidget({super.key});
  SignInController _signInController = Get.put(SignInController());
  final _formKey = GlobalKey<FormState>();

  void submitSignIn() {
    if (_signInController.emailController.text.isEmpty ||
        _signInController.emailController.text == null ||
        !UTILMAIN.regExp.hasMatch(_signInController.emailController.text)) {
      Fluttertoast.showToast(
          msg: "Invalid email", backgroundColor: Colors.red[500]);
      return;
    }
    if (_signInController.passwordController.text.isEmpty ||
        _signInController.passwordController.text == null ||
        _signInController.passwordController.text.length < 6) {
      Fluttertoast.showToast(
          msg: "Password must be atleast 6 characters",
          backgroundColor: Colors.red[500]);
      return;
    }
    _signInController.signinWithEmailandPassword();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
        // child: Form(
        //     key: _formKey,
        child: Column(
      children: [
        MyTextField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validatorFunction: (_value) {
              if (!UTILMAIN.regExp.hasMatch(_value)) {
                return "Please enter valid email";
              }
              return null;
            },
            isRequired: true,
            inputIcon: Icon(Icons.email_outlined, color: Colors.white),
            hintText: "Enter Email",
            onChange: _signInController.emailController,
            textInputType: TextInputType.emailAddress),
        const SizedBox(height: 30),
        MyTextField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            isRequired: true,
            hintText: "Enter Password",
            inputIcon: Icon(Icons.password_outlined, color: Colors.white),
            customObscureText: true,
            onChange: _signInController.passwordController,
            textInputType: TextInputType.visiblePassword),
        const SizedBox(height: 50),
        CTAButton(
            btnWidth: media.width * 0.9,
            btnColor: Colors.blue[600],
            btnText: "Sign In",
            onPressedHandler: submitSignIn)
      ],
    ));
    // );
  }
}
