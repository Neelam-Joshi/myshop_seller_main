import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/signup/signin.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool passwordVisible = true;
  int selectedRadio = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 29, right: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 34),
                Align(
                    alignment: Alignment.center,
                    child: getText('Sign Up', 40, kblackColor, FontWeight.w600,
                        poppinsBold)),
                const SizedBox(height: 62),
                _buildTextField("Full Name", nameController, false),
                _buildTextField("Email", emailController, false),
                _buildTextField("Password", passwordController, true),
                const SizedBox(height: 30),
                // getText('Gender', 16, const Color(0xffA8A6A7), FontWeight.w400, poppinsRegular),
                // const SizedBox(
                //   height: 10,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Row(
                //       children: [
                //         customRadio(0, () {
                //           setState(() {
                //             selectedRadio = 0;
                //           });
                //         }),
                //         const SizedBox(
                //           width: 13.33,
                //         ),
                //         getText('Male', 16, const Color(0xffBEBEBE),
                //             FontWeight.w400, poppinsRegular),
                //       ],
                //     ),
                //     Row(
                //       children: [
                //         customRadio(1, () {
                //           setState(() {
                //             selectedRadio = 1;
                //           });
                //         }),
                //         const SizedBox(
                //           width: 13.33,
                //         ),
                //         getText('Female', 16, const Color(0xffBEBEBE),
                //             FontWeight.w400, poppinsRegular),
                //       ],
                //     ),
                //     Row(
                //       children: [
                //         customRadio(2, () {
                //           setState(() {
                //             selectedRadio = 2;
                //           });
                //         }),
                //         const SizedBox(
                //           width: 13.33,
                //         ),
                //         getText('Other', 16, const Color(0xffBEBEBE),
                //             FontWeight.w400, poppinsRegular),
                //       ],
                //     )
                //   ],
                // ),
                // const SizedBox(
                //   height: 30,
                // ),
                // getText('Birth Date', 16, const Color(0xffBEBEBE), FontWeight.w400, poppinsRegular),
                // const SizedBox(
                //   height: 10,
                // ),
                // Container(
                //   width: 106,
                //   decoration: const BoxDecoration(
                //       border: Border(
                //           bottom:
                //               BorderSide(color: Color(0xffBEBEBE), width: 1))),
                //   child: TextFormField(
                //     readOnly: true,
                //     decoration: const InputDecoration(
                //         hintText: 'dd/mm/yyyy',
                //         hintStyle: TextStyle(
                //             fontSize: 16,
                //             color: Color(0xffBEBEBE),
                //             fontWeight: FontWeight.w400,
                //             fontFamily: poppinsRegular),
                //         border: InputBorder.none),
                //   ),
                // ),
                // const Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        primary: kblackColor),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => SignIn()));
                    },
                    child: Container(
                      height: 44,
                      alignment: Alignment.center,
                      child: getText("SIGN UP", 22, kWhiteColor,
                          FontWeight.w400, poppinsRegular),
                    )),
                const SizedBox(
                  height: 22,
                ),
                Align(
                  child: RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(
                              color: kblackColor,
                              fontFamily: poppinsMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      const TextSpan(text: " "),
                      TextSpan(
                          text: "Login",
                          style: const TextStyle(
                            color: ksolidredColor,
                            fontFamily: poppinsMedium,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignIn()));
                            })
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 47,
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget customRadio(int index, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 22.67,
        width: 22.67,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffBEBEBE)),
          borderRadius: BorderRadius.circular(100),
        ),
        alignment: Alignment.center,
        child: selectedRadio == index
            ? Container(
                height: 14.67,
                width: 14.67,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xffEB714A)),
              )
            : Container(),
      ),
    );
  }

  Widget _buildTextField(
      hinttext, TextEditingController _controller, suffixIcon) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
          hintText: hinttext,
          focusColor: const Color(0xffA8A6A7),
          suffixIconConstraints:
              const BoxConstraints(minHeight: 25, minWidth: 25),
          suffixIcon: suffixIcon
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      if (passwordVisible) {
                        passwordVisible = false;
                        debugPrint('_passwordVisible one${passwordVisible}');
                      } else {
                        passwordVisible = true;
                        debugPrint('_passwordVisible two${passwordVisible}');
                      }
                    });
                  },
                  child: passwordVisible
                      ? const ImageIcon(
                          AssetImage('assets/images/unvisible.png'),
                          // size: 18,
                          color: Color(0xffA8A6A7),
                        )
                      : const ImageIcon(
                          AssetImage('assets/images/visible.png'),
                          size: 18,
                          color: Color(0xffA8A6A7),
                        ))
              : null,
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffA8A6A7)),
          ),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffA8A6A7)))),
    );
  }
}
