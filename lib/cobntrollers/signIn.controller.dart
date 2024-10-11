import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:github_sign_in/github_sign_in.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sanchita/cobntrollers/appLevel.controller.dart';
import 'package:sanchita/cobntrollers/userController.dart';
import 'package:sanchita/utils.dart';

class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AppLevelController _appLevelController = AppLevelController();
  UserController _userController = UserController();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  void clearAllTextField() {
    emailController.clear();
    passwordController.clear();
  }

  Future<User?> signinWithEmailandPassword() async {
    try {
      UserCredential credential = await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      _userController?.storeLoginDetails(credential.user!);
      Fluttertoast.showToast(
          msg: 'Logged in successfully', backgroundColor: Colors.green[500]);
      // Get.to(HomePage());

      // return credential.user;
      print("credential.user >>>>>>>>>> ${credential.user}");
      if (credential.user != null)
        _userController.storeLoginDetails(credential.user!);

      _appLevelController.isLoading.value = false;
      clearAllTextField();
      Fluttertoast.showToast(
          msg: "Account Created Successfully",
          backgroundColor: Colors.green[500]);
    } on FirebaseAuthException catch (error) {
      print("hit 37");

      _appLevelController.isLoading.value = false;
      switch (error.code) {
        case 'email-already-in-use':
          {
            print('Email already in use');
            Fluttertoast.showToast(
                msg: 'Email already in use', backgroundColor: Colors.red[500]);
          }
        case 'invalid-email':
          {
            print('Invalid email');
            Fluttertoast.showToast(
                msg: "Invalid email", backgroundColor: Colors.red[500]);
          }
        case 'weak-password':
          {
            print('Weak password');
            Fluttertoast.showToast(
                msg: 'Weak password', backgroundColor: Colors.red[500]);
          }
        case 'operation-not-allowed':
          {
            print('Operation not allowed');
            Fluttertoast.showToast(
                msg: 'Operation not allowed', backgroundColor: Colors.red[500]);
          }
        default:
          {
            print(error.toString());
            Fluttertoast.showToast(
                msg: 'something went wrong', backgroundColor: Colors.red[500]);
          }
      }
    } catch (error) {
      print(error.toString());
      Fluttertoast.showToast(
          msg: 'something went wrong', backgroundColor: Colors.red[500]);
    }
    return null;
  }

  Future<dynamic> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      UserCredential userDetails =
          await FirebaseAuth.instance.signInWithCredential(credential);
      print(
          "usercredentials  google  <><><><><><><><><><><><><><><><>    ${userDetails.user}");
      if (userDetails.user != null)
        _userController.storeLoginDetails(userDetails.user!);

      _appLevelController.isLoading.value = false;
    } on Exception catch (e) {
      Fluttertoast.showToast(
          msg: 'something went wrong', backgroundColor: Colors.red[500]);
      print('exception->$e');
    }
  }

  Future<User?> signInWithGitHub(BuildContext context) async {
    try {
      final GitHubSignIn gitHubSignIn = GitHubSignIn(
          clientId: UTILMAIN.clientGithubId,
          clientSecret: UTILMAIN.clientGithubSecret,
          redirectUrl: UTILMAIN.githubRedirectUri);

      // Trigger the sign-in flow
      final result = await gitHubSignIn.signIn(context);

      // Create a credential from the access token

      final githubAuthCredential = GithubAuthProvider.credential(result.token!);

      // Once signed in, return the UserCredential
      UserCredential userResponse = await FirebaseAuth.instance
          .signInWithCredential(githubAuthCredential);
      if (userResponse.user != null) {
        _userController.storeLoginDetails(userResponse.user!);
        print(
            "usercredentials <><><><><><><><><><><><><><><><>    ${userResponse.user}");
      }
    } catch (error) {
      print(error);
    }
  }
}
