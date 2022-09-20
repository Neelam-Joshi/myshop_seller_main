import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop_seller/constant/AppFonts.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  TextEditingController ownerNameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController emailIdController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();

  int selectIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Profile Settings", true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: getText("Edit Information", 16, kblackColor, FontWeight.w400,
                poppinsRegular),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25),
                getText("Shop Owner Name", 14, kblackColor, FontWeight.w500,
                    poppinsMedium),
                SizedBox(height: 5),
                _buildTextField(
                    "Type your name", ownerNameController, TextInputType.text),
                SizedBox(height: 15),
                getText("Phone Number", 14, kblackColor, FontWeight.w500,
                    poppinsMedium),
                SizedBox(height: 5),
                _buildTextField("Type your phone number", numberController,
                    TextInputType.number),
                SizedBox(height: 15),
                getText("Email ID", 14, kblackColor, FontWeight.w500,
                    poppinsMedium),
                SizedBox(height: 5),
                _buildTextField("Type your email address", emailIdController,
                    TextInputType.emailAddress),
                SizedBox(height: 15),
                getText("Birth Date", 14, kblackColor, FontWeight.w500,
                    poppinsMedium),
                const SizedBox(height: 5),
                _buildTextField(
                    "dd/mm/yyyy", birthDateController, TextInputType.number),
                const SizedBox(height: 15),
                getText(
                    "Gender", 14, kblackColor, FontWeight.w500, poppinsMedium),
                const SizedBox(height: 15),
                Row(children: [
                  customRadioUI(0, () {
                    selectIndex = 0;
                    setState(() {});
                  }),
                  const SizedBox(
                    width: 13.33,
                  ),
                  getText(
                      "Male", 16, kblackColor, FontWeight.w400, poppinsRegular),
                ]),
                const SizedBox(height: 15),
                Row(children: [
                  customRadioUI(1, () {
                    selectIndex = 1;
                    setState(() {});
                  }),
                  const SizedBox(
                    width: 13.33,
                  ),
                  getText("Female", 16, kblackColor, FontWeight.w400,
                      poppinsRegular),
                ]),
                const SizedBox(height: 15),
                Row(children: [
                  customRadioUI(2, () {
                    selectIndex = 2;
                    setState(() {});
                  }),
                  const SizedBox(
                    width: 13.33,
                  ),
                  getText("Other", 16, kblackColor, FontWeight.w400,
                      poppinsRegular),
                ]),
                const SizedBox(height: 15),
                ButtonClass(ksolidredColor, 45, double.infinity,
                    'Save Profile Settings', () {},Colors.white,false
                )
                // ButtonClass(ksolidredColor, 45, 343, "Save Profile Settings",Colors.white,false)
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget _buildTextField(String hinttext, TextEditingController _controller,
      TextInputType keyboardtype) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 10, bottom: 2),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: kblackColor, width: 0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        keyboardType: keyboardtype,
        controller: _controller,
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: hinttext,
            hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: poppinsRegular,
                color: kLightTextColor)),
      ),
    );
  }

  Widget customRadioUI(int index, pressed) {
    return InkWell(
      onTap: pressed,
      child: Container(
        width: 22.67,
        height: 22.67,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
            border: Border.all(color: kblackColor, width: 1)),
        alignment: Alignment.center,
        child: selectIndex == index
            ? Container(
                width: 14.67,
                height: 14.67,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: ksolidredColor,
                ),
              )
            : Container(),
      ),
    );
  }
}
