import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop_seller/constant/AppFonts.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/dasboard/DashboardPage.dart';
import 'package:myshop_seller/modules/signup/choosedesign.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class StoreType extends StatefulWidget {
  const StoreType({Key? key}) : super(key: key);

  @override
  State<StoreType> createState() => _StoreTypeState();
}

class _StoreTypeState extends State<StoreType> {

  List SelectedStoreList = [];
  List storeList = [
    {
      "image":"assets/images/store6.png",
      "title":"Groceries",
      "des": "Category Description in case you don’t know what a fruit is",
    },
    {
      "image":"assets/images/store5.png",
      "title":"Fashion/ Clothing",
      "des": "Category Description in case you don’t know what a fruit is Category Description in case you don’t know what a fruit is",
    },
    {
      "image":"assets/images/store4.png",
      "title":"Electronics",
      "des": "Category Description in case you don’t know what a fruit is",
    },
    {
      "image":"assets/images/store3.png",
      "title":"Pharmacy/ Medical",
      "des": "Category Description in case you don’t know what a fruit is",
    },
    {
      "image":"assets/images/store4.png",
      "title":"Hardware/ Tools",
      "des": "Category Description in case you don’t know what a fruit is",
    },
    {
      "image":"assets/images/store1.png",
      "title":"Bakery",
      "des": "Category Description in case you don’t know what a fruit is",
    },
  ];
  List storeNewList = [];



  void initState(){
    super.initState();
    _getstoreTypes();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height:36),
                Padding(
                    padding: const EdgeInsets.only(left:4,right: 1),
                    child: getText("Select your\nBusiness Category", 24, kblackColor, FontWeight.w600, AppFonts.poppinsBold)) , //semibold
                const SizedBox(height:35),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (BuildContext context,i){
                    return const SizedBox(height:8);
                  },
                  itemCount: storeNewList.length,
                  itemBuilder: (BuildContext context,index){
                    var items = storeNewList[index];
                    return InkWell(
                      onTap: (){
                        if(items.isSelected==true){
                          items.isSelected = false;
                          SelectedStoreList.remove(items.name);
                        }
                        else{
                          items.isSelected = true;
                          SelectedStoreList.add(items.name);
                          debugPrint('${SelectedStoreList[index]}');
                        }
                        setState(() {});
                        // show();
                      },
                      child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: items.isSelected==true?
                              Border.all(
                                color: ksolidredColor
                              ):Border.all(
                                color:const Color(0xffffffff)
                              ),
                                boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    offset: Offset(2, 2))],
                              color:const Color(0xffFFFFFF),
                            ),
                            height: 96,
                            padding: const EdgeInsets.fromLTRB(12, 8, 0, 8),
                            child: Row(
                                children: [
                                  ClipRRect(
                                      borderRadius :BorderRadius.circular(10),
                                      child: Image.asset(items.imagePath,width: 80,height: 80,),),
                                  const SizedBox(width:41),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          getText(items.name,
                                              16, kblackColor, FontWeight.w600, AppFonts.poppinsRegular),
                                          const SizedBox(width:5),
                                          Text(items.des,
                                            style: TextStyle(
                                                fontFamily: AppFonts.poppinsRegular,
                                                fontSize:14 ,
                                                color: kblackColor,
                                                fontWeight: FontWeight.w400,
                                                overflow: TextOverflow.ellipsis
                                            ),
                                            maxLines: 2,
                                          ),
                                        ]),
                                    ),)
                                ])
                        ),

                    );
                  },
                ),
                const SizedBox(height:44),
              ]),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left:24,right:21,bottom:30),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: InkWell(
                  onTap:(){
                    Navigator.pop(context);
                    setState(() {

                    });
                  },
                  child: Container(
                    width: 160,
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            color: ksolidredColor,
                            width:0.5
                        )
                    ),
                    height: 53,
                    alignment: Alignment.center,
                    child: getText("Back", 16, ksolidredColor, FontWeight.w600, AppFonts.poppinsBold),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Flexible(
                child: InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const ChooseDesign()));
                    setState(() {

                    });
                  },
                  child: Container(
                    width:160,
                    decoration: BoxDecoration(
                        color:ksolidredColor,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            color: ksolidredColor,
                            width:0.5
                        )
                    ),
                    height: 53,
                    alignment: Alignment.center,
                    child: getText("continue", 16, Colors.white, FontWeight.w600, AppFonts.poppinsBold),
                  ),
                ),
              ),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false,

    );
  }

  void _getstoreTypes() {
    debugPrint("called");
      for(var i =0;i<storeList.length;i++){
           var dictRes = storeList[i];
           var obj = storemodal();
           obj.name      = dictRes['title'];
           obj.imagePath = dictRes['image'];
           obj.des = dictRes['des'];

           storeNewList.add(obj);
      }
  }


}
class storemodal {
  String name    = "";
  String imagePath = "";
  String des   = "";
  bool? isSelected ;
}
