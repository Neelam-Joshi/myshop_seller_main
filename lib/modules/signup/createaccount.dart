import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/store/storeinformation.dart';
import 'package:myshop_seller/modules/store/storetype.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Create Account', true),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 13.26,
              ),
              Align(
                alignment: Alignment.center,
                child: getText('Contact information', 16, kblackColor,
                    FontWeight.w400, poppinsRegular),
              ),
              const SizedBox(
                height: 52,
              ),
              textField('Email', false),
              const SizedBox(
                height: 23,
              ),
              textField('Business Name', false),
              const SizedBox(
                height: 23,
              ),
              textField('Password', true),
              const SizedBox(
                height: 23,
              ),
              textField('Mobile  Number', false),
              const SizedBox(
                height: 80.36,
              ),
              Row(
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            width: 2, color: const Color(0xff545454))),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  const Text(
                    'Terms and conditions',
                    style: TextStyle(
                        color: ksolidredColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: poppinsRegular,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
              const SizedBox(
                height: 85.77,
              ),
              ButtonClass(ksolidredColor, 45, double.infinity, 'Continue', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StoreInformation())
                );
              },
                Colors.white,false
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget textField(String hintText, bool suffixIcon) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffBEBEBE)),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.only(left: 16),
      alignment: Alignment.center,
      child: TextFormField(
        cursorColor: kblackColor,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
                fontSize: 14,
                color: kLightTextColor,
                fontWeight: FontWeight.w400,
                fontFamily: poppinsRegular),
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
                        ? Container(
                            padding: const EdgeInsets.all(11),
                            child: const ImageIcon(
                              AssetImage('assets/images/unvisible.png'),
                              size: 18,
                              color: Color(0xffC0C0C0),
                            ),
                          )
                        : Container(
                            padding: const EdgeInsets.all(11),
                            child: const ImageIcon(
                              AssetImage('assets/images/visible.png'),
                              size: 18,
                              color: Color(0xffC0C0C0),
                            ),
                          ))
                : null,
            border: InputBorder.none),
      ),
    );
  }
}
