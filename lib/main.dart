import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/firebase_options.dart';
import 'package:sanchita/screens/login/WelcomeView.dart';

import 'cobntrollers/userController.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // transparent status bar
        statusBarIconBrightness: Brightness.light // dark text for status bar
        ));
    
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  } catch (error) {
    print(error);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  UserController _userController = Get.put(UserController());
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final loggedInUserDetails = FirebaseAuth.instance.currentUser;
    if (loggedInUserDetails != null) {
      _userController.storeLoginDetails(loggedInUserDetails);
      print("user is in main 33 line >>>>>>>>>>>>>>>> ${loggedInUserDetails}");
    }
    return MaterialApp(
      title: 'Sanchita',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: TColor.primary,
          background: TColor.gray80,
          primary: TColor.primary,
          primaryContainer: TColor.gray60,
          secondary: TColor.secondary,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: WelcomeView(),
      ),
    );
  }
}
