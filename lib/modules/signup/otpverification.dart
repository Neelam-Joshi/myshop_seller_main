import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/signup/createaccount.dart';
import 'package:myshop_seller/modules/signup/createbusinessacount.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
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
              getText('OTP verfication', 28, kmainblackColor, FontWeight.w700,
                  poppinsBold),
              const SizedBox(
                height: 4,
              ),
              const Text.rich(TextSpan(
                  text: 'Enter the code sent to ',
                  style: TextStyle(
                      fontSize: 16,
                      color: kmainblackColor,
                      fontWeight: FontWeight.w400,
                      fontFamily: poppingsLight),
                  children: [
                    TextSpan(
                        text: '+91 999 8888 777',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: kmainblackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: poppinsRegular))
                  ])),
              const SizedBox(
                height: 52,
              ),
              PinCodeTextField(
                controller: otpController,
                textStyle: const TextStyle(
                    fontSize: 20,
                    color: kmainblackColor,
                    fontWeight: FontWeight.w400,
                    fontFamily: poppinsRegular),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                pinTheme: PinTheme(
                  activeColor: kmainblackColor,
                  disabledColor: kmainblackColor,
                  selectedColor: kmainblackColor,
                  inactiveColor: kmainblackColor,
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                ),
                length: 6,
                appContext: context,
                keyboardType: TextInputType.number,
                onChanged: (val) {},
              ),
              const SizedBox(
                height: 22.78,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text.rich(TextSpan(
                    text: 'Didn’t recieve the code? ',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kmainblackColor),
                    children: [
                      TextSpan(
                          text: 'Resend',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: kmainblackColor,
                          ))
                    ])),
              ),
              const SizedBox(
                height: 36,
              ),
              customBtn()
            ],
          ),
        ),
      ),
    );
  }

  customBtn() {
    return SizedBox(
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
                    builder: (context) => const CreateBusinessAccount()));
          },
          child: getText(
              'Verify', 18, kWhiteColor, FontWeight.w600, poppinsSemiBold)),
    );
  }
}
