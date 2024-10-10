import 'package:flutter/material.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/common/widgets/AppLogo.dart';
import 'package:sanchita/screens/login/ItemLogo.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/welcome_screen.png"),
              fit: BoxFit.cover),
        ),
        child: Stack(children: [
          Positioned(
              top: media.size.height * 0.05,
              left: media.size.width * 0.25,
              child: AppLogo()),
          Positioned(
              top: media.size.height * 0.495,
              left: media.size.width * 0.43,
              child: ItemLogo(
                  imageURL: "assets/img/income.png", width: 130, height: 110)),
          Positioned(
              top: media.size.height * 0.32,
              left: media.size.width * 0.62,
              child: ItemLogo(
                  imageURL: "assets/img/internet_bill.png",
                  width: 80,
                  height: 60)),
          Positioned(
              top: media.size.height * 0.37,
              left: media.size.width * 0.16,
              child: ItemLogo(
                  imageURL: "assets/img/entertain.png", width: 95, height: 80)),
          Positioned(
              top: media.size.height * 0.80,
              left: media.size.width * 0.10,
              child: InkWell(
                  child: Container(
                width: media.size.width * 0.8,
                decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ))),
              Positioned(
              top: media.size.height * 0.95,
              left: media.size.width * 0.25,
              child:
              Center(child: Text("Developed by Santra Developers",style:TextStyle(color: Colors.white,fontSize: 14)))

               )
        ]),
      ),
    );
  }
}
