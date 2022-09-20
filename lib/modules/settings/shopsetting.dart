

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myshop_seller/constant/AppFonts.dart';
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

  List imageCount = [];
  List <Widget> containerWidget = [];

  List addImageList = [];

  //datatable
  var daysArray = ["Mon","Tue","Wed","Thu","Fri","Sat","Sun"];

  List<bool> selectedcheck = [false,false,false,false,false,false,false,];

  var startTiming = [
    "00:00",
    "12:00 AM",
    "12:30 AM",
    "01:00 AM",
    "01:30 AM",
    "02:00 AM",
    "02:30 AM",
    "03:00 AM"
    ,"03:30 AM"
    ,"04:00 AM"
    ,"04:30 AM"
    ,"05:00 AM"
    ,"05:30 AM"
    ,"06:00 AM"
    ,"06:30 AM"
    ,"07:00 AM"
    ,"07:30 AM"
    ,"08:00 AM"
    ,"08:30 AM"
    ,"09:00 AM"
    ,"09:30 AM"
    ,"10:00 AM"
    ,"10:30 AM"
    ,"11:00 AM"
    ,"11:30 AM"
    ,"12:00 PM"
    ,"12:30 PM"

    ,"01:00 PM"
    ,"01:30 PM"
    ,"02:00 PM"
    ,"02:30 PM"
    ,"03:00 PM"
    ,"03:30 PM"
    ,"04:00 PM"
    ,"04:30 PM"
    ,"05:00 PM"
    ,"05:30 PM"
    ,"06:00 PM"
    ,"06:30 PM"
    ,"07:00 PM"
    ,"07:30 PM"
    ,"08:00 PM"
    ,"08:30 PM"
    ,"09:00 PM"
    ,"09:30 PM"
    ,"10:00 PM"
    ,"10:30 PM"
    ,"11:00 PM"
    ,"11:30 PM"

  ];
  var endTiming = [
    "00:00",
    "12:00 AM",
    "12:30 AM",
    "01:00 AM",
    "01:30 AM",
    "02:00 AM"
    ,"02:30 AM"
    ,"03:00 AM"
    ,"03:30 AM"
    ,"04:00 AM"
    ,"04:30 AM"
    ,"05:00 AM"
    ,"05:30 AM"
    ,"06:00 AM"
    ,"06:30 AM"
    ,"07:00 AM"
    ,"07:30 AM"
    ,"08:00 AM"
    ,"08:30 AM"
    ,"09:00 AM"
    ,"09:30 AM"
    ,"10:00 AM"
    ,"10:30 AM"
    ,"11:00 AM"
    ,"11:30 AM"
    ,"12:00 PM"
    ,"12:30 PM"

    ,"01:00 PM"
    ,"01:30 PM"
    ,"02:00 PM"
    ,"02:30 PM"
    ,"03:00 PM"
    ,"03:30 PM"
    ,"04:00 PM"
    ,"04:30 PM"
    ,"05:00 PM"
    ,"05:30 PM"
    ,"06:00 PM"
    ,"06:30 PM"
    ,"07:00 PM"
    ,"07:30 PM"
    ,"08:00 PM"
    ,"08:30 PM"
    ,"09:00 PM"
    ,"09:30 PM"
    ,"10:00 PM"
    ,"10:30 PM"
    ,"11:00 PM"
    ,"11:30 PM"

  ];

  String selectedStartTime = "00:00";
  String selectedEndTime   = "00:00";



  @override
  void initState() {
    super.initState();
    containerWidget.add(GestureDetector(
      onTap: () {
        pickImage();
      },
      child: Container(
        height: 74.7,
        width: 74.7,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
           color:Colors.white,
           boxShadow: [
             BoxShadow(
                 color: Colors.black12,
                 blurRadius: 10,
                 offset: Offset(3,3)
             )
           ]
        ),
        child: Image.asset('assets/images/plus.png', height: 36, width: 36,color:kblackColor),
      ),
    ),);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Shop Settings", true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: getText("Edit Shop Information",
                16, kblackColor, FontWeight.w400, poppinsRegular),
          ),
          Expanded(
            child:
            SingleChildScrollView(
              child:Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25),
                      getText("Shop Name", 14, kblackColor, FontWeight.w500,
                          poppinsMedium),
                      SizedBox(height: 5),
                      _buildTextField("Type your shop name", shopNameController,
                          TextInputType.text, false),
                      SizedBox(height: 15),
                      getText("Business KYC", 14, kblackColor, FontWeight.w500,
                        poppinsMedium,),
                      SizedBox(height: 5),
                      _buildTextField(
                          "Business KYC ID", KYCController, TextInputType.text,
                          true),
                      SizedBox(height: 15),
                      getText("Shop Address", 14, kblackColor, FontWeight.w500,
                        poppinsMedium,),
                      SizedBox(height: 5),
                      _buildTextField("Type your shop address", addressController,
                          TextInputType.text, false),
                      SizedBox(height: 15),
                      getText("Category", 14, kblackColor, FontWeight.w500,
                        poppinsMedium,),
                      SizedBox(height: 5),
                      categorydropdownUI(),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          getText("Accepts online orders", 14, kblackColor,
                              FontWeight.w500, poppinsRegular),
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
                      SizedBox(height: 5),
                      _buildTextField("Kms radius", radiusController, TextInputType.number, false),
                      SizedBox(height: 15),
                      getText("Add photos of your shop", 14, kblackColor, FontWeight.w500, poppinsMedium),
                      SizedBox(height: 15),
                      buildPickImage(),
                      SizedBox(height: 15),
                      getText("Hours of Operation", 20, kblackColor, FontWeight.w500, poppinsMedium),
                      TimeUI(),
                      SizedBox(height: 15),
                      ButtonClass(ksolidredColor, 45, 343, "Update",(){},Colors.white,false)
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
                color: kLightTextColor
            ),
            suffixIcon: suffixicon ?
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: ksolidredColor
                ),
                width: 84,
                child: getText("VALIDATE",
                    14, Colors.white, FontWeight.w400, poppinsRegular),
              ),
            ) : null
        ),
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
              setState(() {

              });
            },
            value: selectedCategory,
            items: categoryList.map(
                    (e) =>
                    DropdownMenuItem(
                      child: getText(e,
                          14, kLightTextColor, FontWeight.w400, poppinsRegular),
                      value: e,)
            ).toList()
        ),
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
          color: ksolidredColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: isSelectedCheck ? Container(
          width: 10, height: 10,
          child: Image.asset("assets/images/check.png", color: Colors.white,),
        ) : null,
      ),
    );
  }

  Widget buildPickImage() {
    return
      Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: GridView.builder(
          itemCount: containerWidget.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 7.7,
            mainAxisSpacing: 10.3,
          ),
          itemBuilder: (context, index) {
            return containerWidget[index];
          }),
    );
  }

  pickImage()async{
    var image =  await ImagePicker().pickImage(source: ImageSource.camera,
    );
    if(image==null)return;
    final imageTemporary = File(image.path);
    setState(() {
      image = imageTemporary as XFile?;
      addImageList.add(imageTemporary);
      imageCount.add(imageTemporary);
    });
    addImageList.forEach((element) {
      addImageList.clear();
      containerWidget.add(
        Container(
          height: 74.7,
          width: 74.7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black
          ),
          child: Image.file(element, fit: BoxFit.fitWidth,),
        ),
      );
    });
  }

  Widget TimeUI()  {
     return Container(
       height: 400,
       child: DataTable(
           horizontalMargin: 0,
           columnSpacing: 15,
           columns:  <DataColumn>[
             DataColumn(label: Container()),
             DataColumn(label: Container()),
             DataColumn(label: Container()),
             DataColumn(label: Container()),
             DataColumn(label: Container()),
           ],
           rows: List<DataRow>.generate(
               daysArray.length,
                   (index) => DataRow(
                     cells:<DataCell> [
                       DataCell(
                         Checkbox(
                             checkColor: Color(0xFFffffff),
                             value: selectedcheck[index],
                             activeColor:Color(0xFF1E2F59),
                             onChanged: ( value) {

                               setState(() {
                                 selectedcheck[index] = value!;
                               });
                             }),
                       ),
                       DataCell(
                         getText(daysArray[index], 16, kblackColor, FontWeight.w500, poppinsMedium)
                       ),
                       DataCell(
                           Container(
                               padding: const EdgeInsets.only(left:5),
                               height: 30,
                               color: Color(0xFFF3F5FF),
                               alignment: Alignment.center,
                               child: GestureDetector(
                                 onTap: (){

                                 },
                                 child: DropdownButton<String>(

                                   isExpanded: true,
                                   value: selectedStartTime,
                                   icon: Icon(Icons.arrow_drop_down_outlined),
                                   //icon: Image.asset('assets/icons/back_arrow.png'),
                                   iconSize: 24,
                                   elevation: 16,
                                   hint: Text("00:00"),
                                   style:  TextStyle(color:Color(0xFFA3A3A3),
                                       fontSize: 16,
                                       fontWeight: FontWeight.w400
                                   ),
                                   underline: Container(height: 2, color: const Color(0xffF6F8F9),),
                                   onChanged: (String? newValue) {
                                     setState(() {
                                       setState(() {});
                                       selectedStartTime=newValue!;
                                     });
                                   },

                                   items: startTiming.map<DropdownMenuItem<String>>((String value) {
                                     return DropdownMenuItem<String>(value: value, child: Text(value),);
                                   }).toList(),
                                 ),
                               ))),
                       DataCell(
                           getText("-", 16, kblackColor, FontWeight.w500, poppinsMedium)
                       ),
                       DataCell(
                           Container(
                               padding: const EdgeInsets.only(left:5),
                               height: 30,
                               color: Color(0xFFF3F5FF),
                               alignment: Alignment.center,
                               child: GestureDetector(
                                 onTap: (){

                                 },
                                 child: DropdownButton<String>(

                                   isExpanded: true,
                                   value: selectedEndTime,
                                   icon: Icon(Icons.arrow_drop_down_outlined),
                                   //icon: Image.asset('assets/icons/back_arrow.png'),
                                   iconSize: 24,
                                   elevation: 16,
                                   hint: Text("00:00"),
                                   style:  TextStyle(color:Color(0xFFA3A3A3),
                                       fontSize: 16,
                                       fontWeight: FontWeight.w400
                                   ),
                                   underline: Container(height: 2, color: const Color(0xffF6F8F9),),
                                   onChanged: (String? newValue) {
                                     setState(() {
                                       setState(() {});
                                       selectedEndTime = newValue!;
                                     });
                                   },

                                   items: endTiming.map<DropdownMenuItem<String>>((String value) {
                                     return DropdownMenuItem<String>(value: value, child: Text(value),);
                                   }).toList(),
                                 ),
                               ))),
                     ])
           )
       ),
     );
  }


}