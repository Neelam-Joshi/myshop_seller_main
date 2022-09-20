import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/signup/signupscreen.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Flexible(
            child: Image.asset(
              "assets/images/intro.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 21, right: 21),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 21),
                child: getText("Now Browse Online Buy Offline", 32,
                    const Color(0xffffffff), FontWeight.w800, poppinsRegular),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(right: 21),
                child: getText(
                    "Now enjoy offline and online shopping right from one app",
                    15,
                    const Color(0xff9F9F9F),
                    FontWeight.w500,
                    poppinsRegular),
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SignUpScreen()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 47,
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: getText("Proceed", 16, kblackColor, FontWeight.w500,
                      poppinsMedium),
                ),
              ),
              const SizedBox(
                height: 57,
              )
            ]),
          )
        ],
      ),
    );
  }
}
