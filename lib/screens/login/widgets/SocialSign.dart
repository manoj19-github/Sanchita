import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanchita/cobntrollers/signIn.controller.dart';

class SocialSignIn extends StatelessWidget {
  SocialSignIn({super.key});
  SignInController _signInController = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: media.size.width * 0.25,
                height: 1,
                decoration: BoxDecoration(color: Colors.white),
              ),
              Text(
                "Or sign in with",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Container(
                width: media.size.width * 0.25,
                height: 1,
                decoration: BoxDecoration(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: media.size.width * 0.30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                    onTap: () {
                      _signInController.signInWithGoogle();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset("assets/img/google_icon.png",
                          width: 30, height: 30),
                    )),
              ),
              Container(
                width: media.size.width * 0.30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                    onTap: () {
                      _signInController.signInWithGitHub(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset("assets/img/github.png",
                          width: 30, height: 30),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
