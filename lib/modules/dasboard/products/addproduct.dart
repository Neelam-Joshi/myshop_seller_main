import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

import 'catalog.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {

  List containerWidget = [];
  List imageCount = [];
  List addImageList = [];

  bool isSelectedCheck=false;

  TextEditingController productcontroller =TextEditingController() ;

  TextEditingController MRPcontroller=TextEditingController();

  @override
  void initState() {
    super.initState();
    containerWidget.add(
      IconButton(
      onPressed: () {
        pickImage();
      },
      icon: Container(
        height: 92,
        width: 92,
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
        padding: const EdgeInsets.only(top:15),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/plus.png', height: 12, width: 12,color:kblackColor),
              SizedBox(height: 5,),
              getText("Add Photo", 12, Colors.black, FontWeight.w400,poppinsRegular )
            ]),
      ),
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Products", true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:16,right:16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: getText("Add Products", 16, kblackColor, FontWeight.w400, poppinsRegular),
              ),
              SizedBox(height:38.46),
               buildPickImage(),
              SizedBox(height:20),
              Row(
                children: [
                  getText("Product Name", 14, kblackColor, FontWeight.w500, poppinsMedium),
                  Spacer(),
                  getText("Active", 14, kLightTextColor, FontWeight.w400, poppinsRegular),
                  SizedBox(width:5),
                  customCheckBoxUI(() {
                        setState(() {
                          if (isSelectedCheck) {
                            isSelectedCheck = false;
                          } else {
                            isSelectedCheck = true;
                          }
                        });
                      }),

                ]),
               SizedBox(height:5),
              _buildTextField("Type your product name", productcontroller, TextInputType.text, false),
              SizedBox(height:20),
              getText("Number of items in stock", 14, kblackColor, FontWeight.w500, poppinsMedium),
              SizedBox(height:5),
              _buildTextField("Type your shop address", productcontroller, TextInputType.text, false),
              SizedBox(height:20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getText("MRP", 14, kblackColor, FontWeight.w500, poppinsMedium),
                      SizedBox(height:5),
                      Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(left:5),
                    width: 155,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffBEBEBE), width: 0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller:MRPcontroller,
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "MRP",
                          hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: poppinsRegular,
                              color: kLightTextColor
                          ),
                          prefixIcon:
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/₹.png",width:8,height:16),
                          )
                      ),
                    ),
                  )

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getText("Selling Price", 14, kblackColor, FontWeight.w500, poppinsMedium),
                      SizedBox(height:5),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(left: 5),
                        width: 155,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xffBEBEBE), width: 0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          controller:MRPcontroller,
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "Selling Price",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: poppinsRegular,
                                  color: kLightTextColor
                              ),
                              prefixIcon:
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset("assets/images/₹.png",width:8,height:16),
                              )
                          ),
                        ),
                      )

                    ],
                  ),
                ],
              ),
              SizedBox(height:30),
              ButtonClass(ksolidredColor, 45, 343, " Add Product", (){}, Colors.white, false),
              SizedBox(height:30),
              ButtonClass(Colors.white, 45, 343, "Add Products using Catalog",
                      (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext Context)=>CatalogAddProducts()));
              },ksolidredColor, true),



            ],
          ),
        ),
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

  Widget customCheckBoxUI(pressed) {
    return InkWell(
      onTap: pressed,
      child: Container(
        alignment: Alignment.center,
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: isSelectedCheck?ksolidredColor:Colors.white,
          border: Border.all(
            color: isSelectedCheck?ksolidredColor:kcheckboxColor,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: isSelectedCheck ? Container(
          width: 10, height: 10,
          child: Image.asset("assets/images/check.png", color: Colors.white,),
        ) : null,
      ),
    );
  }

  Widget _buildTextField(String hinttext, TextEditingController _controller,
      TextInputType keyboardtype, prefixicon) {
    return
      Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 10),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xffBEBEBE), width: 0.5),
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
            prefixIcon: prefixicon ?
            GestureDetector(
              onTap: () {},
              child: Image.asset("assets/images/₹.png",width:8,height:16),
            ) : null
        ),
      ),
    );
  }
}
