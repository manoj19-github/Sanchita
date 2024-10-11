import 'dart:convert';

import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserController extends GetxController {
  User? loggedInUser;
  @override
  void storeLoginDetails(User loginDetails) async {
    loggedInUser = loginDetails;
    update();
  }
}
