import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop_seller/constant/AppFonts.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/dasboard/DashboardPage.dart';
import 'package:myshop_seller/modules/settings/choosedesign.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class StoreType extends StatefulWidget {
  const StoreType({Key? key}) : super(key: key);

  @override
  State<StoreType> createState() => _StoreTypeState();
}

class _StoreTypeState extends State<StoreType> {

  int isSelected = -1;

  List storeList = [
    {
      "image":"assets/images/store6.png",
      "title":"Groceries",
      "des": "Category Description in case you don’t know what a fruit is"
    },{
      "image":"assets/images/store5.png",
      "title":"Fashion/ Clothing",
      "des": "Category Description in case you don’t know what a fruit is Category Description in case you don’t know what a fruit is"
    },{
      "image":"assets/images/store4.png",
      "title":"Electronics",
      "des": "Category Description in case you don’t know what a fruit is"
    },{
      "image":"assets/images/store3.png",
      "title":"Pharmacy/ Medical",
      "des": "Category Description in case you don’t know what a fruit is"
    },{
      "image":"assets/images/store4.png",
      "title":"Hardware/ Tools",
      "des": "Category Description in case you don’t know what a fruit is"
    },{
      "image":"assets/images/store1.png",
      "title":"Bakery",
      "des": "Category Description in case you don’t know what a fruit is"
    },
  ];


  void show(){
    showDialog(
      barrierDismissible: false,
        context: context,
        builder:( BuildContext context)=>

            Dialog(
              backgroundColor: Colors.transparent,
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left:30,right:25),
                child: Container(
                  height: 53,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         ButtonClass(Colors.white, 53, 105, "back",() {
                            Navigator.pop(context);
                            isSelected=-1;
                            setState(() {

                            });
                          },ksolidredColor,true),
                         ButtonClass(ksolidredColor, 53, 105, "continue",() {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const ChooseDesign()));
                          },Colors.white,false),


                      ]),
                ),
              ),
            )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 18,right: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:80),
              getText("Select your\nBusiness Cateogary", 24, kblackColor, FontWeight.w600, AppFonts.poppinsBold) , //semibold
              SizedBox(height:35),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (BuildContext context,i){
                  return SizedBox(height:8);
                },
                itemCount: storeList.length,
                itemBuilder: (BuildContext context,index){
                  var items = storeList[index];
                  return InkWell(
                    onTap: (){
                      if(isSelected!=index){
                        isSelected = index;
                      }

                      setState(() {

                      });
                      show();


                    },
                    child: Card(
                      elevation: 2,
                      color:Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),

                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            border: isSelected==index?Border.all(
                              color: ksolidredColor
                            ):Border.all(
                              color:Color(0xffffffff)
                            )
                          ),
                          height: 96,
                          padding: const EdgeInsets.fromLTRB(12, 8, 10, 8),
                          child: Row(
                              children: [
                                ClipRRect(
                                    borderRadius :BorderRadius.circular(10),
                                    child: Image.asset(items['image'])),
                                SizedBox(width:41),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8,bottom: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        getText(items["title"],
                                            16, kblackColor, FontWeight.w600, AppFonts.poppinsRegular),
                                        SizedBox(width:5),
                                        Text(items["des"],
                                          style: TextStyle(
                                              fontFamily: AppFonts.poppinsRegular,
                                              fontSize:14 ,
                                              color: kblackColor,
                                              fontWeight: FontWeight.w400,
                                              overflow: TextOverflow.ellipsis
                                          ),
                                          maxLines: 2,
                                        ),

                                      ],
                                    ),
                                  ),
                                )
                              ])
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height:44),



            ],
          ),
        ),
      ),

    );
  }
}
