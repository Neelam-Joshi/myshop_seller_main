import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop_seller/constant/AppFonts.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/dasboard/products/addfruit.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class CatalogAddProducts extends StatefulWidget {
  const CatalogAddProducts({Key? key}) : super(key: key);

  @override
  State<CatalogAddProducts> createState() => _CatalogAddProductsState();
}

class _CatalogAddProductsState extends State<CatalogAddProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Catalog", true),
      body: Padding(
        padding: const EdgeInsets.only(left:16,right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Center(
                  child: getText("Add Product",
                      16, kblackColor, FontWeight.w400, poppinsRegular)
              ),
              const SizedBox(height:38.87),
              _buildTextField("Search Catalog",),
              const SizedBox(height: 24.59,),
              Expanded(
                  child: ListView.separated(
                      itemCount: 8,
                      separatorBuilder: (BuildContext context,i){
                             return const SizedBox(
                               height:15
                             );
                      },
                      itemBuilder: (BuildContext context, index){
                           return
                             InkWell(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>AddFruit()));
                               },
                               child: Container(
                               padding: const EdgeInsets.only(left:12.5,top: 11,),
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
                                      Image.asset("assets/images/fruits.png",width: 101,height:101,) ,
                                      const SizedBox(width: 19.5,),
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            getText("Fruit", 16, kblackColor, FontWeight.w600, poppinsRegular),
                                            SizedBox(height: 5,),
                                            const  Text(
                                              "Category Description in \ncase you don’t know what a fruit is",
                                              style:  TextStyle(
                                                fontSize: 14,
                                                color: kLightTextColor,
                                                fontFamily: poppinsRegular,
                                                fontWeight: FontWeight.w400,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              maxLines: 2,
                                            ),
                                            SizedBox(height: 10,),
                                            getText("275 Products", 14, kblackColor, FontWeight.w400, poppinsRegular),
                                          ]),
                                      )
                                 ]),
                           ),
                             );
                      },
                  )
              )
          ]),
      ),
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
}
