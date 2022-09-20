import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class StoreInformation extends StatefulWidget {
  const StoreInformation({Key? key}) : super(key: key);

  @override
  State<StoreInformation> createState() => _StoreInformationState();
}

class _StoreInformationState extends State<StoreInformation> {
  TextEditingController shopNameController = TextEditingController();
  TextEditingController shopLocationController = TextEditingController();

  int selectedCheckbox = -1;
  bool monCheckbox = false;
  bool tueCheckBox = false;
  bool wedCheckbox = false;
  bool thuCheckBox = false;
  bool friCheckBox = false;
  bool satCheckBox = false;
  bool sunCheckbox = false;
  List startTiming = [
    "00:00",
    "12:00 AM",
    "12:30 AM",
    "01:00 AM",
    "01:30 AM",
    "02:00 AM",
    "02:30 AM",
    "03:00 AM",
    "03:30 AM",
    "04:00 AM",
    "04:30 AM",
    "05:00 AM",
    "05:30 AM",
    "06:00 AM",
    "06:30 AM",
    "07:00 AM",
    "07:30 AM",
    "08:00 AM",
    "08:30 AM",
    "09:00 AM",
    "09:30 AM",
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
    "12:00 PM",
    "12:30 PM",
    "01:00 PM",
    "01:30 PM",
    "02:00 PM",
    "02:30 PM",
    "03:00 PM",
    "03:30 PM",
    "04:00 PM",
    "04:30 PM",
    "05:00 PM",
    "05:30 PM",
    "06:00 PM",
    "06:30 PM",
    "07:00 PM",
    "07:30 PM",
    "08:00 PM",
    "08:30 PM",
    "09:00 PM",
    "09:30 PM",
    "10:00 PM",
    "10:30 PM",
    "11:00 PM",
    "11:30 PM"
  ];
  String? startTime1;
  String? endTime1;
  String? startTime2;
  String? endTime2;
  String? startTime3;
  String? endTime3;
  String? startTime4;
  String? endTime4;
  String? startTime5;
  String? endTime5;
  String? startTime6;
  String? endTime6;
  String? startTime7;
  String? endTime7;

  @override
  void initState() {
    startTime1 = '00:00';
    endTime1 = '00:00';
    startTime2 = '00:00';
    endTime2 = '00:00';
    startTime3 = '00:00';
    endTime3 = '00:00';
    startTime4 = '00:00';
    endTime4 = '00:00';
    startTime5 = '00:00';
    endTime5 = '00:00';
    startTime6 = '00:00';
    endTime6 = '00:00';
    startTime7 = '00:00';
    endTime7 = '00:00';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Store Information", true),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 36,
                    ),
                    getText("Shop Name", 14, kblackColor, FontWeight.w400,
                        poppinsRegular),
                    _buildTextField("Shop Name", shopNameController),
                    const SizedBox(
                      height: 7,
                    ),
                    getText("Shop Location", 14, kblackColor, FontWeight.w400,
                        poppinsRegular),
                    _buildTextField("Shop Location", shopNameController),
                    const SizedBox(
                      height: 24,
                    ),
                    _addPhotoUI(),
                  ])),
          const Divider(thickness: 0.5, color: kblackColor),
          const SizedBox(
            height: 24,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16),
              child: getText("Hours of Operation", 24, kmainblackColor,
                  FontWeight.w600, poppinsBold)),
          const SizedBox(height: 8),
          timingUI(),
          const SizedBox(
            height: 44.59,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: InkWell(
              onTap: () {},
              child: ButtonClass(ksolidredColor, 45, 343, "Continue", () {},Colors.white,false),
            ),
          ),
          const SizedBox(
            height: 37,
          )
        ]),
      ),
    );
  }

  Widget _buildTextField(String hinttext, TextEditingController _controller) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(
        left: 10,
      ),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: kblackColor, width: 0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hinttext,
            hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: poppinsRegular,
                color: kblackColor)),
      ),
    );
  }

  Widget _addPhotoUI() {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      InkWell(
        onTap: () {},
        child: Container(
          width: 69,
          height: 69,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: ksolidredColor, width: 1)),
          alignment: Alignment.center,
          child: Image.asset(
            "assets/images/plus.png",
            color: kblackColor,
            width: 14.4,
            height: 16.14,
          ),
        ),
      ),
      const SizedBox(
        width: 27,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getText("Add photos of your shop", 16, kblackColor, FontWeight.w600,
              poppinsBold),
          const SizedBox(
            height: 10.41,
          ),
          const Text(
            'Add Photo',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                fontSize: 14,
                color: ksolidredColor),
          )
        ],
      ),
    ]);
  }

  Widget timingUI() {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 28, top: 8),
      child: SizedBox(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Row(
                    children: [
                      customCheckBox(
                          monCheckbox ? ksolidredColor : kWhiteColor,
                          monCheckbox
                              ? const Icon(
                                  Icons.check,
                                  size: 14,
                                  color: Colors.white,
                                )
                              : const Icon(
                                  Icons.abc,
                                  color: Colors.white,
                                ),
                          monCheckbox
                              ? ksolidredColor
                              : const Color(0xff545454), () {
                        setState(() {
                          if (monCheckbox == true) {
                            monCheckbox = false;
                          } else {
                            monCheckbox = true;
                          }
                        });
                      }),
                      const SizedBox(
                        width: 10,
                      ),
                      getText('Mon:', 16, kblackColor, FontWeight.w600,
                          poppinsSemiBold),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Flexible(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: kblackColor),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          value: startTime1,
                          items: startTiming.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: getText(e, 16, kblackColor,
                                    FontWeight.w600, montserratBold));
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              startTime1 = val as String;
                            });
                          }),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  width: 10,
                  height: 2,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: Color(0xff847C7C)),
                ),
                const SizedBox(
                  width: 3,
                ),
                Flexible(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: kblackColor),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          value: endTime1,
                          items: startTiming.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: getText(e, 16, kblackColor,
                                    FontWeight.w600, montserratBold));
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              endTime1 = val! as String;
                            });
                          }),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Row(
                    children: [
                      customCheckBox(
                          tueCheckBox ? ksolidredColor : kWhiteColor,
                          tueCheckBox
                              ? const Icon(
                                  Icons.check,
                                  size: 14,
                                  color: Colors.white,
                                )
                              : const Icon(
                                  Icons.abc,
                                  color: Colors.white,
                                ),
                          tueCheckBox
                              ? ksolidredColor
                              : const Color(0xff545454), () {
                        setState(() {
                          if (tueCheckBox == true) {
                            tueCheckBox = false;
                          } else {
                            tueCheckBox = true;
                          }
                        });
                      }),
                      const SizedBox(
                        width: 10,
                      ),
                      getText('Tue:', 16, kblackColor, FontWeight.w600,
                          poppinsSemiBold),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Flexible(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: kblackColor),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          value: startTime2,
                          items: startTiming.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: getText(e, 16, kblackColor,
                                    FontWeight.w600, montserratBold));
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              startTime2 = val as String;
                            });
                          }),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  width: 10,
                  height: 2,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: Color(0xff847C7C)),
                ),
                const SizedBox(
                  width: 3,
                ),
                Flexible(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: kblackColor),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          value: endTime2,
                          items: startTiming.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: getText(e, 16, kblackColor,
                                    FontWeight.w600, montserratBold));
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              endTime2 = val! as String;
                            });
                          }),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Row(
                    children: [
                      customCheckBox(
                          wedCheckbox ? ksolidredColor : kWhiteColor,
                          wedCheckbox
                              ? const Icon(
                                  Icons.check,
                                  size: 14,
                                  color: Colors.white,
                                )
                              : const Icon(
                                  Icons.abc,
                                  color: Colors.white,
                                ),
                          wedCheckbox
                              ? ksolidredColor
                              : const Color(0xff545454), () {
                        setState(() {
                          if (wedCheckbox == true) {
                            wedCheckbox = false;
                          } else {
                            wedCheckbox = true;
                          }
                        });
                      }),
                      const SizedBox(
                        width: 10,
                      ),
                      getText('Wed:', 16, kblackColor, FontWeight.w600,
                          poppinsSemiBold),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Flexible(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: kblackColor),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          value: startTime3,
                          items: startTiming.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: getText(e, 16, kblackColor,
                                    FontWeight.w600, montserratBold));
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              startTime3 = val as String;
                            });
                          }),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  width: 10,
                  height: 2,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: Color(0xff847C7C)),
                ),
                const SizedBox(
                  width: 3,
                ),
                Flexible(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: kblackColor),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          value: endTime3,
                          items: startTiming.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: getText(e, 16, kblackColor,
                                    FontWeight.w600, montserratBold));
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              endTime3 = val! as String;
                            });
                          }),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Row(
                    children: [
                      customCheckBox(
                          thuCheckBox ? ksolidredColor : kWhiteColor,
                          thuCheckBox
                              ? const Icon(
                                  Icons.check,
                                  size: 14,
                                  color: Colors.white,
                                )
                              : const Icon(
                                  Icons.abc,
                                  color: Colors.white,
                                ),
                          thuCheckBox
                              ? ksolidredColor
                              : const Color(0xff545454), () {
                        setState(() {
                          if (thuCheckBox == true) {
                            thuCheckBox = false;
                          } else {
                            thuCheckBox = true;
                          }
                        });
                      }),
                      const SizedBox(
                        width: 10,
                      ),
                      getText('Thu:', 16, kblackColor, FontWeight.w600,
                          poppinsSemiBold),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Flexible(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: kblackColor),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          value: startTime4,
                          items: startTiming.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: getText(e, 16, kblackColor,
                                    FontWeight.w600, montserratBold));
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              startTime4 = val as String;
                            });
                          }),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  width: 10,
                  height: 2,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: Color(0xff847C7C)),
                ),
                const SizedBox(
                  width: 3,
                ),
                Flexible(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: kblackColor),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          value: endTime4,
                          items: startTiming.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: getText(e, 16, kblackColor,
                                    FontWeight.w600, montserratBold));
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              endTime4 = val! as String;
                            });
                          }),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Row(
                    children: [
                      customCheckBox(
                          friCheckBox ? ksolidredColor : kWhiteColor,
                          friCheckBox
                              ? const Icon(
                                  Icons.check,
                                  size: 14,
                                  color: Colors.white,
                                )
                              : const Icon(
                                  Icons.abc,
                                  color: Colors.white,
                                ),
                          friCheckBox
                              ? ksolidredColor
                              : const Color(0xff545454), () {
                        setState(() {
                          if (friCheckBox == true) {
                            friCheckBox = false;
                          } else {
                            friCheckBox = true;
                          }
                        });
                      }),
                      const SizedBox(
                        width: 10,
                      ),
                      getText('Fri:', 16, kblackColor, FontWeight.w600,
                          poppinsSemiBold),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Flexible(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: kblackColor),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          value: startTime5,
                          items: startTiming.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: getText(e, 16, kblackColor,
                                    FontWeight.w600, montserratBold));
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              startTime5 = val as String;
                            });
                          }),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  width: 10,
                  height: 2,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: Color(0xff847C7C)),
                ),
                const SizedBox(
                  width: 3,
                ),
                Flexible(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: kblackColor),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          value: endTime5,
                          items: startTiming.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: getText(e, 16, kblackColor,
                                    FontWeight.w600, montserratBold));
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              endTime5 = val! as String;
                            });
                          }),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Row(
                    children: [
                      customCheckBox(
                          satCheckBox ? ksolidredColor : kWhiteColor,
                          satCheckBox
                              ? const Icon(
                                  Icons.check,
                                  size: 14,
                                  color: Colors.white,
                                )
                              : const Icon(
                                  Icons.abc,
                                  color: Colors.white,
                                ),
                          satCheckBox
                              ? ksolidredColor
                              : const Color(0xff545454), () {
                        setState(() {
                          if (satCheckBox == true) {
                            satCheckBox = false;
                          } else {
                            satCheckBox = true;
                          }
                        });
                      }),
                      const SizedBox(
                        width: 10,
                      ),
                      getText('Sat:', 16, kblackColor, FontWeight.w600,
                          poppinsSemiBold),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Flexible(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: kblackColor),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          value: startTime6,
                          items: startTiming.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: getText(e, 16, kblackColor,
                                    FontWeight.w600, montserratBold));
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              startTime6 = val as String;
                            });
                          }),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  width: 10,
                  height: 2,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: Color(0xff847C7C)),
                ),
                const SizedBox(
                  width: 3,
                ),
                Flexible(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: kblackColor),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          value: endTime6,
                          items: startTiming.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: getText(e, 16, kblackColor,
                                    FontWeight.w600, montserratBold));
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              endTime6 = val! as String;
                            });
                          }),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Row(
                    children: [
                      customCheckBox(
                          sunCheckbox ? ksolidredColor : kWhiteColor,
                          sunCheckbox
                              ? const Icon(
                                  Icons.check,
                                  size: 14,
                                  color: Colors.white,
                                )
                              : const Icon(
                                  Icons.abc,
                                  color: Colors.white,
                                ),
                          sunCheckbox
                              ? ksolidredColor
                              : const Color(0xff545454), () {
                        setState(() {
                          if (sunCheckbox == true) {
                            sunCheckbox = false;
                          } else {
                            sunCheckbox = true;
                          }
                        });
                      }),
                      const SizedBox(
                        width: 10,
                      ),
                      getText('Sun:', 16, kblackColor, FontWeight.w600,
                          poppinsSemiBold),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Flexible(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: kblackColor),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          value: startTime7,
                          items: startTiming.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: getText(e, 16, kblackColor,
                                    FontWeight.w600, montserratBold));
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              startTime7 = val as String;
                            });
                          }),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  width: 10,
                  height: 2,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: Color(0xff847C7C)),
                ),
                const SizedBox(
                  width: 3,
                ),
                Flexible(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: kblackColor),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          value: endTime7,
                          items: startTiming.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: getText(e, 16, kblackColor,
                                    FontWeight.w600, montserratBold));
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              endTime7 = val! as String;
                            });
                          }),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  dropDown1(String? selected1) {
    return Flexible(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            border: Border.all(color: kblackColor),
            borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.center,
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
              icon: const Visibility(
                  visible: false, child: Icon(Icons.arrow_downward)),
              value: selected1,
              items: startTiming.map((e) {
                return DropdownMenuItem(
                    value: e,
                    child: getText(
                        e, 16, kblackColor, FontWeight.w600, montserratBold));
              }).toList(),
              onChanged: (val) {
                setState(() {
                  selected1 = val as String;
                });
              }),
        ),
      ),
    );
  }

  dropDown2(String? selected2) {
    return Flexible(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            border: Border.all(color: kblackColor),
            borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.center,
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
              icon: const Visibility(
                  visible: false, child: Icon(Icons.arrow_downward)),
              value: selected2,
              items: startTiming.map((e) {
                return DropdownMenuItem(
                    value: e,
                    child: getText(
                        e, 16, kblackColor, FontWeight.w600, montserratBold));
              }).toList(),
              onChanged: (val) {
                setState(() {
                  selected2 = val as String;
                });
              }),
        ),
      ),
    );
  }

  Widget customCheckBox(
      Color color, Icon icon, Color borderColor, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(width: 2, color: borderColor)),
          child: icon),
    );
  }
}
