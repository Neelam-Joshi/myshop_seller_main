import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/dasboard/products/addproduct.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Products", false),
      body: Padding(
        padding: const EdgeInsets.only(left:16,right:16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:16),
            searchAndFilterUI(),
            SizedBox(height:13),
            Expanded(
              child:GridView.builder(
                 shrinkWrap: true,
                  physics: ScrollPhysics(),
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                       childAspectRatio: 0.75,
                       crossAxisSpacing: 5,
                       mainAxisSpacing: 5,
                  ),
                  itemBuilder: (BuildContext context,index){
                      return InkWell(
                        onTap: (){
                          show();
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(left:10,right:9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/apple.png",width: 145,height:145),
                                getText("Product Name", 14, Colors.black, FontWeight.w400, poppinsBold) , //semibold
                                const Text("1 in stock",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: ksolidredColor,
                                    fontFamily: poppinsRegular,
                                    decoration: TextDecoration.underline
                                  ),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    getText("₹65.40", 14, Colors.black, FontWeight.w500, poppinsMedium),
                                    InkWell(
                                      onTap: (){

                                      },
                                      child: const Text("Edit",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: ksolidredColor,
                                            fontFamily: poppinsRegular,
                                            decoration: TextDecoration.underline
                                        ),),
                                    ),
                                  ])
                              ]),
                          ),
                        ),
                      );
                  }),
            )
          ]),
      ),
    );
  }

  Widget searchAndFilterUI(){
    return Row(
      children: [
         Container(
           alignment: Alignment.center,
           padding: const EdgeInsets.only(left:12),
           width: 285,
           height:40,
           decoration: BoxDecoration(
             color: Color(0xffffffff),
             borderRadius: BorderRadius.circular(10),
             border: Border.all(
               color: kborderColor,
               width: 1,
             )
           ),
           child: TextField(
             decoration: InputDecoration(
               border: InputBorder.none,
               hintText: "Search",
               hintStyle: TextStyle(
                 fontFamily: poppinsRegular,
                 fontSize: 14,
                 color: kLightTextColor,
                 fontWeight: FontWeight.w400
               ),
               prefixIcon: IconButton(
                 padding: const EdgeInsets.only(top:5.5),
                 onPressed: (){},
                 icon: Image.asset("assets/images/search.png",width: 22.05,height:23.35,),
               )
             ),
           ),
         ),
         SizedBox(width:2),
         Flexible(child: Image.asset("assets/images/slider.png",width:46.5,height:30))
      ],
    );
  }

  void show() {
    showDialog(context: context,
        builder: (BuildContext context)=>
            Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              alignment: Alignment.bottomCenter,
              child: ButtonClass(ksolidredColor, 45,
                  343, "Add Product",(){
                     Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>AddProduct()));

                  }, Colors.white, false),
            ),
    );
  }
}
