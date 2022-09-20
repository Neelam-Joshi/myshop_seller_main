import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/signup/otpverification.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class LoginOtp extends StatefulWidget {
  const LoginOtp({Key? key}) : super(key: key);

  @override
  State<LoginOtp> createState() => _LoginOtpState();
}

class _LoginOtpState extends State<LoginOtp> {
  TextEditingController numberController = TextEditingController();
  TextEditingController countryCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            Image.asset(
              'assets/images/arrowandroidback.png',
              width: 22.14,
              height: 19.58,
            ),
            const SizedBox(
              height: 40.2,
            ),
            getText('Hi there!', 28, kmainblackColor, FontWeight.w600,
                poppinsSemiBold),
            const SizedBox(
              height: 4,
            ),
            getText('Please enter your number to phone nubmer', 16,
                kmainblackColor, FontWeight.w400, poppinsRegular),
            const SizedBox(
              height: 52,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Row(
                children: [
                  showCountry(),
                  const SizedBox(
                    width: 15,
                  ),
                  Flexible(child: customTextField())
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            customBtn()
          ],
        ),
      )),
    );
  }

  Widget customTextField() {
    return TextFormField(
      cursorColor: kmainblackColor,
      style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: kmainblackColor,
          fontFamily: poppinsRegular),
      decoration: const InputDecoration(
          hintText: 'Phone number',
          hintStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: kmainblackColor,
              fontFamily: poppinsRegular),
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: kmainblackColor, width: 1)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kmainblackColor, width: 1)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kmainblackColor, width: 1))),
    );
  }

  showCountry() {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black))),
      child: Row(
        children: [
          Image.asset(
            'assets/images/indian.png',
            width: 51,
            height: 26,
          ),
          const SizedBox(
            width: 9,
          ),
          Container(
            width: 10.01,
            height: 6.01,
            alignment: Alignment.centerRight,
            child: Image.asset(
              'assets/images/arrowdown.png',
              width: 10.01,
              color: kmainblackColor,
              height: 6.01,
            ),
          ),
        ],
      ),
    );
  }

  customBtn() {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: SizedBox(
        height: 58,
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                primary: kmainblackColor),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OtpVerification()));
            },
            child: getText(
                'Send OTP', 18, kWhiteColor, FontWeight.w600, poppinsBold)),
      ),
    );
  }
}
