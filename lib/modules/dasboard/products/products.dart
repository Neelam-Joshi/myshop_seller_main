import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/dasboard/products/addproduct.dart';
import 'package:myshop_seller/modules/dasboard/products/editproducts.dart';
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
            const SizedBox(height:16),
            searchUI(),
            const SizedBox(height:13),
            Expanded(
              child:GridView.builder(
                 itemCount: 10,
                 shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                       childAspectRatio: 0.70,
                       crossAxisSpacing: 15,
                        mainAxisSpacing: 19,
                  ),
                  itemBuilder: (BuildContext context,index){
                      return InkWell(
                        onTap: (){},
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(left:10,right:9,top:5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/apple.png",width: 145,height:145),
                               // const SizedBox(height:5),
                                getText("Product Name", 14, Colors.black, FontWeight.w600, poppinsSemiBold) , //semibold
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
                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditProduct()));
                                      },
                                      child: const Text("Edit",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: ksolidredColor,
                                            fontFamily: poppinsMedium,
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
              343, "Add Product",(){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>AddProduct()));

              }, Colors.white, false),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget searchUI(){
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left:12),
      height:40,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
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
          hintStyle: const TextStyle(
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
    );

  }

  // void show() {
  //   showDialog(context: context,
  //       builder: (BuildContext context)=>
  //           Dialog(
  //             shape: RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(5)
  //             ),
  //             alignment: Alignment.bottomCenter,
  //             child: ButtonClass(ksolidredColor, 45,
  //                 343, "Add Product",(){
  //                    Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>AddProduct()));
  //
  //                 }, Colors.white, false),
  //           ),
  //   );
  // }
}
