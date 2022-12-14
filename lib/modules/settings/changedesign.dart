import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/AppFonts.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/dasboard/DashboardPage.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class ChangeDesign extends StatefulWidget {
  const ChangeDesign({Key? key}) : super(key: key);

  @override
  State<ChangeDesign> createState() => _ChangeDesignState();
}

class _ChangeDesignState extends State<ChangeDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Select a Card", true),
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.only(left:14,right:13),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 29.26,),
                Padding(
                    padding: const EdgeInsets.only(left:6,right:4),
                    child: getText("Your current design", 20, kblackColor, FontWeight.w500, poppinsMedium)
                ),
                const SizedBox(height: 15,),
                Container(
                  height: 200.93,
                  decoration: BoxDecoration(
                      color:const Color(0xffC5C3FF),
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                const SizedBox(height: 30.07,),
                getText("Choose new design", 20, kblackColor, FontWeight.w500, poppinsMedium),
                const SizedBox(height: 15),
                GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 16,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.59,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12
                    ) ,
                    itemBuilder: (BuildContext context , i){
                      return InkWell(
                        onTap: (){},
                        child: Container(
                          height: 97,
                          decoration: BoxDecoration(
                              color:const Color(0xffC5C3FF),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0xff7090B02B),
                                    offset: Offset(0, 0),
                                    blurRadius: 4,
                                    spreadRadius: 0)
                              ]
                          ),
                        ),
                      );
                    }),
                const SizedBox(height: 25),
                ButtonClass(ksolidredColor, 45, 343, "Continue",
                        ()  {},
                    Colors.white, false),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
