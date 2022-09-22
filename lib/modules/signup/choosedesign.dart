import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/AppFonts.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/dasboard/DashboardPage.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class ChooseDesign extends StatefulWidget {
  const ChooseDesign({Key? key}) : super(key: key);

  @override
  State<ChooseDesign> createState() => _ChooseDesignState();
}

class _ChooseDesignState extends State<ChooseDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.only(left:14,right:13),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40,),
                Padding(
                    padding: const EdgeInsets.only(left:6,right:4),
                    child: getText("Choose a theme for your business", 24, kblackColor, FontWeight.w600, poppinsRegular)
                ),
                const SizedBox(height: 24,),
                Container(
                  height: 200.93,
                  decoration: BoxDecoration(
                    color:const Color(0xffC5C3FF),
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                const SizedBox(height: 37.05,),
                getText("Choose a new design", 20, kblackColor, FontWeight.w600, poppinsRegular),
                const SizedBox(height: 15),
                GridView.builder(
                  shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 8,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.08,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12
                    ) ,
                    itemBuilder: (BuildContext context , i){
                       return InkWell(
                         onTap: (){
                           // show();
                         },
                         child: Container(
                           height: 97,
                           decoration: BoxDecoration(
                               color:const Color(0xffC5C3FF),
                               borderRadius: BorderRadius.circular(10)
                           ),
                         ),
                       );
                    })
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left:20,right:15),
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
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const DashboardPage()));
                    setState(() {});
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
    );
  }

  // void show(){
  //   showDialog(context: context,
  //       builder:( BuildContext context)=>
  //           Dialog(
  //             backgroundColor: Colors.transparent,
  //             alignment: Alignment.bottomCenter,
  //             child:
  //             Padding(
  //               padding: const EdgeInsets.only(left:30,right:25),
  //               child: Container(
  //                 height: 53,
  //                 child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       ButtonClass(Colors.white, 53, 105, "back",() {},ksolidredColor,true),
  //                       ButtonClass(ksolidredColor, 53, 105, "continue",() {
  //                         Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const DashboardPage()));
  //                       },Colors.white,false)
  //                     ]),
  //               ),
  //             ),
  //           )
  //   );
  // }
}
