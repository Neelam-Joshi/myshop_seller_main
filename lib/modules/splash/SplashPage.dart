import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myshop_seller/constant/AppColor.dart';
import 'package:myshop_seller/constant/AppTextStyle.dart';
import 'package:myshop_seller/constant/PageConstant.dart';
import 'package:myshop_seller/modules/signup/introscreen.dart';
import 'package:myshop_seller/modules/signup/signupscreen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 31.38),
        child: Column(
          children: [
            const Spacer(),
            Center(
              child: Image.asset('assets/images/splashicon.png'),
            ),
            const Spacer(),
            Container(
              height: 3,
              width: 149,
              decoration: BoxDecoration(
                  color: const Color(0xffA4A4A4),
                  borderRadius: BorderRadius.circular(100)),
            ),
            const SizedBox(
              height: 6,
            )
          ],
        ),
      ),
    );
  }

  void _startTimer() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const IntroScreen()));
      // Navigator.pushNamed(context, PageConstant.signup);
    });
  }
}
