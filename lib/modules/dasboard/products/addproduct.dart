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
  List addImageList = [];
  List imageCount = [];
  List<Widget> containerWidget = [];
  File? image;

  bool isSelectedCheck = false;

  TextEditingController productcontroller = TextEditingController();

  TextEditingController MRPcontroller = TextEditingController();

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/plus.png',
                height: 16,
                width: 14.77,
                color: kblackColor,
              ),
              const SizedBox(
                height: 5,
              ),
              getText("Add Photo", 12, Colors.black, FontWeight.w400,
                  poppinsRegular)
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      appBar: appBar(context, "Products", true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: getText("Add Products", 16, kblackColor, FontWeight.w400,
                    poppinsRegular),
              ),
              const SizedBox(height: 31.46),
              buildPickImage(),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.only(right: 12),
                child: Row(children: [
                  getText("Product Name", 14, kblackColor, FontWeight.w500,
                      poppinsMedium),
                  Spacer(),
                  getText("Active", 14, kLightTextColor, FontWeight.w500,
                      poppinsMedium),
                  const SizedBox(width: 10),
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
              ),
              const SizedBox(height: 5),
              _buildTextField("Type your product name", productcontroller,
                  TextInputType.text, false),
              const SizedBox(height: 20),
              getText("Number of items in stock", 14, kblackColor,
                  FontWeight.w500, poppinsMedium),
              const SizedBox(height: 5),
              _buildTextField("Type your shop address", productcontroller,
                  TextInputType.text, false),
              const SizedBox(height: 20),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getText("MRP", 14, kblackColor, FontWeight.w500,
                            poppinsMedium),
                        const SizedBox(height: 5),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(left: 5),
                          width: 155,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: const Color(0xffBEBEBE), width: 0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.text,
                            controller: MRPcontroller,
                            decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "MRP",
                                hintStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: poppinsRegular,
                                    color: Color(0xffA8A8A8)),
                                prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset("assets/images/₹.png",
                                      width: 8, height: 16),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 19,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getText("Selling Price", 14, kblackColor,
                            FontWeight.w500, poppinsMedium),
                        const SizedBox(height: 5),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(left: 5),
                          width: 155,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color(0xffBEBEBE), width: 0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.text,
                            controller: MRPcontroller,
                            decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "Selling Price",
                                hintStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: poppinsRegular,
                                    color: Color(0xffA8A8A8)),
                                prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset("assets/images/₹.png",
                                      width: 8, height: 16),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ButtonClass(ksolidredColor, 45, 343, " Add Product", () {},
                  Colors.white, false),
              const SizedBox(height: 20),
              customProductCatlogBtn(),
              const SizedBox(
                height: 83,
              )
            ],
          ),
        ),
      ),
    );
  }

  customProductCatlogBtn() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext Context) => CatalogAddProducts()));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: ksolidredColor, width: 0.5)),
        height: 45,
        width: double.infinity,
        alignment: Alignment.center,
        child: getText('Add Products using Catalog', 16, ksolidredColor,
            FontWeight.w500, poppinsMedium),
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
            crossAxisCount: 3,
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

  Widget customCheckBoxUI(pressed) {
    return InkWell(
      onTap: pressed,
      child: Container(
        alignment: Alignment.center,
        width: 17,
        height: 17,
        decoration: BoxDecoration(
          color: isSelectedCheck ? ksolidredColor : Colors.white,
          border: Border.all(
            color: isSelectedCheck ? ksolidredColor : kcheckboxColor,
          ),
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

  Widget _buildTextField(String hinttext, TextEditingController _controller,
      TextInputType keyboardtype, prefixicon) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 10),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xffBEBEBE), width: 0.5),
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
            prefixIcon: prefixicon
                ? GestureDetector(
                    onTap: () {},
                    child: Image.asset("assets/images/₹.png",
                        width: 8, height: 16),
                  )
                : null),
      ),
    );
  }
}
