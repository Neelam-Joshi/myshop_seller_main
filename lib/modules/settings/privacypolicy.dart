import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9F9F9),
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/arrowback.png',
              width: 9.15,
              height: 17,
            ),
          ),
        ),
        title: getText('Privacy Policy', 24, kblackColor, FontWeight.w600,
            poppinsSemiBold),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              getText('Last Updated May 13, 2022', 16, const Color(0xffC0C0C0),
                  FontWeight.w500, poppinsMedium),
              const SizedBox(
                height: 16,
              ),
              getText('Privacy Policy', 40, kblackColor, FontWeight.w500,
                  poppinsMedium),
              const SizedBox(
                height: 16,
              ),
              getText(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                  16,
                  kblackColor,
                  FontWeight.w500,
                  poppinsMedium),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        border: Border.all(color: kblackColor, width: 2),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  const Text(
                    'Privacy Policy',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffC61414),
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w400,
                        fontFamily: poppinsRegular),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
