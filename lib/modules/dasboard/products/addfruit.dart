import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class AddFruit extends StatefulWidget {
  const AddFruit({Key? key}) : super(key: key);

  @override
  State<AddFruit> createState() => _AddFruitState();
}

class _AddFruitState extends State<AddFruit> {

  List fruitsList =[
    {
    "image": "assets/images/fruit1.png",
    "title": "Mango",
    "des": "Knowen Names",
    },
    {
    "image": "assets/images/fruits2.png",
    "title": "Alphonso",
    "des": "Knowen Names",
    },
    {
    "image": "assets/images/fruits3.png",
    "title": "Type of Mango",
    "des": "Knowen Names",
    },
    {
    "image": "assets/images/fruits4.png",
    "title": "Type of Mango",
    "des": "Knowen Names",
    },
    {
    "image": "assets/images/fruits5.png",
    "title": "Type of Mango",
    "des": "Knowen Names",
    },
    {
      "image": "assets/images/fruits6.png",
      "title": "Type of Mango",
      "des": "Knowen Names",
    },
    {
      "image": "assets/images/fruits7.png",
      "title": "Type of Mango",
      "des": "Knowen Names",
    },
    {
      "image": "assets/images/fruits8.png",
      "title": "Nectarine",
      "des": "Knowen Names",
    },
    {
      "image": "assets/images/fruits9.png",
      "title": "Nectarine",
      "des": "",
    },
    {
      "image": "assets/images/fruit1.png",
      "title": "Orange",
      "des": "Knowen Names",
    },

  ];


  List<bool>checkList =[];


  void initState(){
    checkList = List.generate(fruitsList.length, (index) => false);
    debugPrint('checkList${checkList.length}');
    for(var i =0; i<checkList.length;i++){
      debugPrint('checkList${checkList[i]}');
    }



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Add Product", true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: getText("Fruit",
                  16, kblackColor, FontWeight.w400, poppinsRegular)
          ),
          const SizedBox(height:38.87),
          Padding(
              padding: const EdgeInsets.only(left:16,right: 16),
              child: _buildTextField("Search Fruit",)),
          const SizedBox(height: 24.59,),
          Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.only(left:16,right: 16),
                itemCount: fruitsList.length,
                separatorBuilder: (BuildContext context,i){
                  return const SizedBox(
                      height:15
                  );
                },
                itemBuilder: (BuildContext context, index){
                  var items = fruitsList[index];
                  return Container(
                    padding: const EdgeInsets.only(left:12.5,top: 11,bottom: 13),
                    height: 125,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow:[
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(2, 2)
                        )],
                    ),
                    child: Row(
                      children: [
                        Image.asset(items['image'],width: 101,height:101,) ,
                        const SizedBox(width: 19.5,),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(right:16),
                                alignment: Alignment.topRight,
                                child: customCheckBoxUI(
                                        (){
                                          if(checkList[index]==false) {
                                          checkList[index] =true;
                                          debugPrint('one${checkList[index]}');
                                           } else{
                                            checkList[index]=false;
                                            debugPrint(' two ${checkList[index]}');
                                          }
                                          setState(() {
                                            // show();
                                          });

                                        },checkList[index] ,index),
                              ),
                              getText("Fruit", 16, kblackColor, FontWeight.w600, poppinsRegular),
                              SizedBox(height: 10,),
                              getText("275 Products", 14, kblackColor, FontWeight.w400, poppinsRegular),
                            ]),
                        )],),
                  );
                },
              )
          )
        ]),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left:16,right:16),
        child: Container(
          margin: const EdgeInsets.only(bottom: 39),
          height: 45,
          alignment: Alignment.bottomCenter,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: ButtonClass(ksolidredColor, 45,
              343, "Save to Inventory",(){
                showDialog(context: context, builder: (context)=>
                    showmessage()
                );
              }, Colors.white, false),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildTextField(hinttext) {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(left:16),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: kborderColor,
              width: 1
          ),
          borderRadius: BorderRadius.circular(10)
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hinttext,
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              fontFamily: poppinsRegular,
              color: kLightTextColor,
            )
        ),
      ) ,
    );
  }

  Widget customCheckBoxUI(pressed,bool istrue,int index) {
    return InkWell(
      onTap: pressed,
      child: Container(
        alignment: Alignment.center,
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: istrue ==true?ksolidredColor:Colors.white,
          border: Border.all(
              width: 2,
              color: istrue ==true?ksolidredColor:Color(0xff545454)
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: istrue ==true? Container(
          width: 10, height: 10,
          child: Image.asset("assets/images/check.png", color: Colors.white,),
        ) : null,
      ),
    );
  }

  // void show(){
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context)=>
  //           Dialog(
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(5)
  //             ),
  //             alignment: Alignment.bottomCenter,
  //             child: InkWell(
  //               onTap: (){
  //                 showmessage();
  //               },
  //               child: ButtonClass(ksolidredColor, 45,
  //                   343, "Save to Inventory",(){
  //
  //                   },
  //                   Colors.white, false),
  //             ),
  //           )
  //   );
  // }
 Widget showmessage(){
     print('clicked');
     return AlertDialog(
              elevation: 40,
              contentPadding: const EdgeInsets.fromLTRB(70, 65, 70, 65),
              alignment: Alignment.center,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              content: getText("3 Products added!", 16, Colors.black, FontWeight.w500, poppinsMedium),
            );

  }
}
