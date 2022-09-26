import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop_seller/constant/AppFonts.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class ChooseBanner extends StatefulWidget {
  const ChooseBanner({Key? key}) : super(key: key);

  @override
  State<ChooseBanner> createState() => _ChooseBannerState();
}

class _ChooseBannerState extends State<ChooseBanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Choose Banner", true),
      body: Column(
        children: [
           Center(
             child: getText("Choose Advertisement Banner", 16, kblackColor, FontWeight.w400, poppinsRegular),
           ),
          SizedBox(height:25),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(left:16,right:16),
                 physics: ScrollPhysics(),
                 shrinkWrap: true,
                 itemCount: 4,
                 separatorBuilder: (BuildContext context, i){
                  return SizedBox(height:20);
                },
                itemBuilder: (BuildContext context, index){
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            offset: Offset(2,2),
                            color: Colors.black12
                          )
                        ]
                      ),
                      height: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            fit:BoxFit.fill,
                              child: Image.asset("assets/images/sale1.png",width: 343,height: 115,)),
                          Flexible(
                            child: Padding(
                              padding:const EdgeInsets.only(left:20,top: 7),
                              child: Row(
                                children: [
                                  getText("Visit abc electronic store", 14, kblackColor, FontWeight.w400, poppinsRegular),
                                  SizedBox(width: 12,),
                                  Image.asset("assets/images/arrow_right.png",color: kblackColor,width: 19.5 ,)
                                ],
                              ),
                            ),
                          )


                        ],
                      ),
                    );
          },

               ),
          )
        ],
      ),
    );
  }
}
