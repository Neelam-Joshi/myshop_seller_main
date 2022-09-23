import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/dasboard/DashboardPage.dart';
import 'package:myshop_seller/modules/store/storetype.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class CreateBusinessAccount extends StatefulWidget {
  const CreateBusinessAccount({Key? key}) : super(key: key);

  @override
  State<CreateBusinessAccount> createState() => _CreateBusinessAccountState();
}

class _CreateBusinessAccountState extends State<CreateBusinessAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 36,
          ),
          Container(
            padding: const EdgeInsets.only(left: 24, right: 13),
            child: getText('What’s your Business \nName', 24, kblackColor,
                FontWeight.w600, poppinsRegular),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
              padding: const EdgeInsets.only(left: 24, right: 50),
              child: customTextField()),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: customBtn()),
          const SizedBox(
            height: 45,
          )
        ],
      )),
    );
  }

  customBtn() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const StoreType()));
      },
      child: Container(
        decoration: BoxDecoration(
          color: ksolidredColor,
          borderRadius: BorderRadius.circular(15),
        ),
        height: 53,
        width: double.infinity,
        alignment: Alignment.center,
        child: getText(
            'Continue', 16, Colors.white, FontWeight.w600, poppinsSemiBold),
      ),
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
          hintText: 'Enter here',
          hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xffA8A6A7),
              fontFamily: poppinsRegular),
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffA8A6A7), width: 1)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffA8A6A7), width: 1)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffA8A6A7), width: 1))),
    );
  }
}
