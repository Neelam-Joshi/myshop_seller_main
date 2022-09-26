import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class ShopSettings extends StatefulWidget {
  const ShopSettings({Key? key}) : super(key: key);

  @override
  State<ShopSettings> createState() => _ShopSettingsState();
}

class _ShopSettingsState extends State<ShopSettings> {
  TextEditingController shopNameController = TextEditingController();
  TextEditingController KYCController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController radiusController = TextEditingController();

  List categoryList = [
    "Groceries",
    "Fashion/ Clothing",
    "Electronics",
    "Pharmacy/ Medical",
    "Hardware/ Tools",
    "Bakery",
  ];

  bool isSelectedCheck = false;

  String? selectedCategory = "Groceries";
  List addImageList = [];
  List imageCount = [];
  List<Widget> containerWidget = [];
  File? image;

  //datatable
  var daysArray = ["Mon:", "Tue:", "Wed:", "Thu:", "Fri:", "Sat:", "Sun:"];

  List<bool> selectedcheck = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  var startTiming = [
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
  var endTiming = [
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

  String selectedStartTime = "00:00";
  String selectedEndTime = "00:00";

  @override
  void initState() {
    super.initState();
    containerWidget.add(
      GestureDetector(
        onTap: () {
          pickImage();
        },
        child: Container(
          height: 92,
          width: 92,
          alignment: Alignment.center,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 10, offset: Offset(3, 3))
          ], borderRadius: BorderRadius.circular(10), color: kWhiteColor),
          child: Image.asset(
            'assets/images/plus.png',
            height: 26,
            width: 24,
            color: kblackColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Shop Settings", true),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
          child: getText("Edit Shop Information", 16, kblackColor,
              FontWeight.w400, poppinsRegular),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    getText("Shop Name", 14, kblackColor, FontWeight.w500,
                        poppinsMedium),
                    const SizedBox(height: 5),
                    _buildTextField("Type your shop name", shopNameController,
                        TextInputType.text, false),
                    const SizedBox(height: 15),
                    getText(
                      "Business KYC",
                      14,
                      kblackColor,
                      FontWeight.w500,
                      poppinsMedium,
                    ),
                    const SizedBox(height: 5),
                    _buildTextField("Business KYC ID", KYCController,
                        TextInputType.text, true),
                    const SizedBox(height: 15),
                    getText(
                      "Shop Address",
                      14,
                      kblackColor,
                      FontWeight.w500,
                      poppinsMedium,
                    ),
                    const SizedBox(height: 5),
                    _buildTextField("Type your shop address", addressController,
                        TextInputType.text, false),
                    const SizedBox(height: 15),
                    getText(
                      "Category",
                      14,
                      kblackColor,
                      FontWeight.w500,
                      poppinsMedium,
                    ),
                    const SizedBox(height: 5),
                    categorydropdownUI(),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.only(right: 9),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          getText("Accepts online orders", 14, kblackColor,
                              FontWeight.w500, poppinsMedium),
                          customCheckBoxUI(() {
                            setState(() {
                              if (isSelectedCheck) {
                                isSelectedCheck = false;
                              } else {
                                isSelectedCheck = true;
                              }
                            });
                          })
                        ],
                      ),
                    ),
                    const SizedBox(height: 9),
                    _buildTextField("Kms radius", radiusController,
                        TextInputType.number, false),
                    const SizedBox(height: 15),
                    getText("Add photos of your shop", 14, kblackColor,
                        FontWeight.w500, poppinsMedium),
                    const SizedBox(height: 15),
                    buildPickImage(),
                    const SizedBox(height: 25),
                    getText("Hours of Operation", 20, kblackColor,
                        FontWeight.w500, poppinsMedium),
                    TimeUI(),
                    const SizedBox(height: 20),
                    ButtonClass(ksolidredColor, 45, 343, "Update", () {},
                        Colors.white, false),
                    const SizedBox(height: 35),
                  ]),
            ),
          ),
        )
      ]),
    );
  }

  Widget _buildTextField(String hinttext, TextEditingController _controller,
      TextInputType keyboardtype, suffixicon) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 10),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: kblackColor, width: 0.5),
        borderRadius: BorderRadius.circular(9),
      ),
      child: TextField(
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
                color: Color(0xffA8A8A8)),
            suffixIcon: suffixicon
                ? GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: ksolidredColor),
                      width: 84,
                      child: getText("VALIDATE", 14, Colors.white,
                          FontWeight.w400, poppinsRegular),
                    ),
                  )
                : null),
      ),
    );
  }

  Widget categorydropdownUI() {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: kblackColor, width: 0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      width: 343,
      height: 40,
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            onChanged: (value) {
              selectedCategory = value.toString();
              setState(() {});
            },
            value: selectedCategory,
            items: categoryList
                .map((e) => DropdownMenuItem(
                      child: getText(e, 14, kLightTextColor, FontWeight.w400,
                          poppinsRegular),
                      value: e,
                    ))
                .toList()),
      ),
    );
  }

  Widget customCheckBoxUI(pressed) {
    return InkWell(
      onTap: pressed,
      child: Container(
        alignment: Alignment.center,
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          border: Border.all(
              color: isSelectedCheck ? ksolidredColor : kcheckboxColor),
          color: isSelectedCheck ? ksolidredColor : Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: isSelectedCheck
            ? Container(
                width: 10,
                height: 10,
                child: Image.asset(
                  "assets/images/check.png",
                  color: Colors.white,
                ),
              )
            : null,
      ),
    );
  }

  Widget buildPickImage() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
          itemCount: containerWidget.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            return containerWidget[index];
          }),
    );
  }

  pickImage() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    if (image == null) return;
    final imageTemporary = File(image.path);
    setState(() {
      this.image = imageTemporary;
      addImageList.add(imageTemporary);
      imageCount.add(imageTemporary);
    });
    addImageList.forEach((element) {
      addImageList.clear();
      containerWidget.add(
        Container(
          height: 92,
          width: 92,
          decoration: BoxDecoration(
              boxShadow: const [],
              borderRadius: BorderRadius.circular(10),
              color: kWhiteColor),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.file(
              element,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    });
  }

  Widget TimeUI() {
    return Container(
      height: 400,
      padding: const EdgeInsets.only(left: 6, right: 18),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: DataTable(
            dividerThickness:0.0,
            horizontalMargin: 0,
            columnSpacing: 15,
            columns: <DataColumn>[
              DataColumn(label: Container()),
              DataColumn(label: Container()),
              DataColumn(label: Container()),
              DataColumn(label: Container()),
              DataColumn(label: Container()),
            ],
            rows: List<DataRow>.generate(
                daysArray.length,
                (index) => DataRow(cells: <DataCell>[
                      DataCell(
                        InkWell(
                          onTap: (){
                            if(selectedcheck[index])
                              selectedcheck[index]= false;
                            else
                              selectedcheck[index] = true;
                                setState(() {

                                });
                          },
                          child: Container(
                            alignment: Alignment.center,
                      width:18,height:18,
                      decoration:BoxDecoration(
                          color:selectedcheck[index]==true?ksolidredColor:Color(0xffffffff),
                          borderRadius: BorderRadius.circular(5),
                          border:Border.all(
                          color:selectedcheck[index]==true?ksolidredColor:kblackColor,width:2
                      )
                      ),
                    child:selectedcheck[index]==true?
                    Image.asset("assets/images/check.png",width:10,height:10,color:Color(0xffffffff))
                          :Container()
                ),
                        )
                        // Checkbox(
                        //
                        //     checkColor: const Color(0xFFffffff),
                        //     value: selectedcheck[index],
                        //     activeColor: ksolidredColor,
                        //     onChanged: (value) {
                        //       setState(() {
                        //         selectedcheck[index] = value!;
                        //       });
                        //     }),
                      ),
                      DataCell(
                          getText(daysArray[index], 16,
                              selectedcheck[index]== false?Color(0xffA8A8A8):kblackColor,
                          FontWeight.w500, poppinsMedium)),
                      DataCell(
                          Container(
                          padding: const EdgeInsets.only(left: 5),
                          height: 30,
                          decoration:BoxDecoration(
                            color: const Color(0xFFFfFfFF),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 1,color: Color(0xffBEBEBE)
                            )
                          ),
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {},
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: selectedStartTime,
                              icon: const Icon(Icons.arrow_drop_down_outlined),
                              //icon: Image.asset('assets/icons/back_arrow.png'),
                              iconSize: 24,
                              elevation: 16,
                              hint: const Text("00:00"),
                              style: const TextStyle(
                                  color: Color(0xFFA3A3A3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              underline: Container(
                                height: 2,
                                color: const Color(0xffF6F8F9),
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  setState(() {});
                                  selectedStartTime = newValue!;
                                });
                              },

                              items: startTiming
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ))),
                      DataCell(getText(
                          "-", 16, Color(0xffA8A8A8), FontWeight.w500, poppinsMedium)),
                      DataCell(
                          Container(
                          padding: const EdgeInsets.only(left: 5),
                           decoration:BoxDecoration(
                                  color: const Color(0xFFFfFfFF),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 1,color: Color(0xffBEBEBE)
                                  )
                              ),
                          height: 30,
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {},
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: selectedEndTime,
                              icon: const Icon(Icons.arrow_drop_down_outlined),
                              //icon: Image.asset('assets/icons/back_arrow.png'),
                              iconSize: 24,
                              elevation: 16,
                              hint: const Text("00:00"),
                              style: const TextStyle(
                                  color: Color(0xFFA3A3A3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              underline: Container(
                                height: 2,
                                color: const Color(0xffF6F8F9),
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  setState(() {});
                                  selectedEndTime = newValue!;
                                });
                              },

                              items: endTiming
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ))),
                    ]))),
      ),
    );
  }
}
