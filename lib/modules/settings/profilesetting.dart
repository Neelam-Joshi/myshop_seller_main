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

  DateTime date = DateTime.now();
  var day, month, year;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Profile Settings", true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: getText("Edit Information", 16, kblackColor, FontWeight.w400,
                  poppinsRegular),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  getText("Shop Owner Name", 14, kblackColor, FontWeight.w500,
                      poppinsMedium),
                  const SizedBox(height: 5),
                  _buildTextField(
                      "Type your name", ownerNameController, TextInputType.text,false),
                  const SizedBox(height: 15),
                  getText("Phone Number", 14, kblackColor, FontWeight.w500,
                      poppinsMedium),
                  const SizedBox(height: 5),
                  _buildTextField("Type your phone number", numberController,
                      TextInputType.number,false),
                  const SizedBox(height: 15),
                  getText("Email ID", 14, kblackColor, FontWeight.w500,
                      poppinsMedium),
                  const SizedBox(height: 5),
                  _buildTextField("Type your email address", emailIdController,
                      TextInputType.emailAddress,false),
                  const SizedBox(height: 15),
                  getText("Birth Date", 14, kblackColor, FontWeight.w500,
                      poppinsMedium),
                  const SizedBox(height: 5),
                  GestureDetector(
                    onTap: () async{
                     DateTime? newDate=  await showDatePicker(

                           context: context,
                           initialDate: date,
                           firstDate: DateTime(1900),
                           lastDate: DateTime(  DateTime.now().year, DateTime.now().month, DateTime.now().day)
                     );
                     debugPrint('newDate${newDate}');
                      if(newDate==null) return;
                        setState(() {
                          date = newDate;
                          day = date.day < 10 ? '0${date.day}' : date.day;
                          month = date.month < 10
                              ? '0${date.month}'
                              : date.month;
                          year = date.year;
                         birthDateController.text="$day/$month/$year";
                        });
                    },
                    child:
                    AbsorbPointer(
                      child: _buildTextField(
                          "dd/mm/yyyy", birthDateController, TextInputType.none,false),
                    ),
                  ),
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
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hinttext, TextEditingController _controller,
      TextInputType keyboardtype,readonly) {
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
        readOnly: readonly,
        keyboardType: keyboardtype,
        controller: _controller,
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: hinttext,
            hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: poppinsRegular,
                color: Color(0xffA8A8A8))),
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
