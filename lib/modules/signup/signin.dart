import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/signup/loginotp.dart';
import 'package:myshop_seller/modules/signup/loginotp.dart';
import 'package:myshop_seller/modules/signup/signupscreen.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController NameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 34),
            Container(
                padding: const EdgeInsets.only(left: 29, right: 29),
                child: getText(
                    "Sign In", 40, kblackColor, FontWeight.w600, poppinsBold)),
            const SizedBox(height: 62),
            Container(
                padding: const EdgeInsets.only(left: 29, right: 29),
                child: _buildTextField("Email", emailController, false)),
            Container(
                padding: const EdgeInsets.only(left: 29, right: 29),
                child: _buildTextField("Password", passwordController, true)),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.only(left: 29, right: 29),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      primary: kblackColor),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const LoginOtp()));
                  },
                  child: Container(
                    height: 44,
                    alignment: Alignment.center,
                    child: getText("LOG IN", 22, kWhiteColor, FontWeight.w400,
                        poppinsRegular),
                  )),
            ),
            const SizedBox(height: 22),
            RichText(
              text: TextSpan(children: [
                const TextSpan(
                    text: "Dont have an acount? ",
                    style: TextStyle(
                        color: kblackColor,
                        fontFamily: poppinsRegular,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
                const TextSpan(text: " "),
                TextSpan(
                    text: "Sign up",
                    style: const TextStyle(
                      color: ksolidredColor,
                      fontFamily: poppinsMedium,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                      })
              ]),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Flexible(
                  child: Divider(
                    color: Color(0xffA8A6A7),
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                getText("Sign In with ", 16, kmainblackColor, FontWeight.w400,
                    poppinsRegular),
                const SizedBox(
                  width: 12,
                ),
                const Flexible(
                  child: Divider(
                    color: Color(0xffA8A6A7),
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 19),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/google.png",
                  width: 44,
                  height: 45,
                ),
                const SizedBox(width: 25),
                Image.asset(
                  "assets/images/facebook.png",
                  width: 44,
                  height: 45,
                ),
              ],
            )
          ],
        )),
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
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffA8A6A7)),
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffA8A6A7))),
        suffixIcon: suffixIcon
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    if (_passwordVisible) {
                      _passwordVisible = false;
                      debugPrint('_passwordVisible one${_passwordVisible}');
                    } else {
                      _passwordVisible = true;
                      debugPrint('_passwordVisible two${_passwordVisible}');
                    }
                  });
                },
                child: _passwordVisible
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
      ),
    );
  }
}
