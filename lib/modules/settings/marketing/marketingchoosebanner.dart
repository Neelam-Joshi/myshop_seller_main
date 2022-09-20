import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/settings/marketing/createpromotion.dart';
import 'package:myshop_seller/modules/settings/marketing/whatsappstatus.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class MarketingChooseBanner extends StatefulWidget {
  const MarketingChooseBanner({Key? key}) : super(key: key);

  @override
  State<MarketingChooseBanner> createState() => _MarketingChooseBannerState();
}

class _MarketingChooseBannerState extends State<MarketingChooseBanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Marketing", true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: getText("Choose Advertisement Banner",
                  16, kblackColor, FontWeight.w400, poppinsRegular)),
          SizedBox(height:26),
          Padding(
            padding: const EdgeInsets.only(left:56,right:55),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>CreatePromotion()));
              },
              child: Container(
                padding: const EdgeInsets.only(left:17.07,right:17.07,bottom: 23.83),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 271.47,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/adbanner.png",width: 144.52,height: 146.45),
                    SizedBox(height:15.86),
                    getText("Run an Ad", 18, Colors.black, FontWeight.w500, poppinsMedium),
                    SizedBox(height:10),
                    Text("Find customers. You’ll show up in \nexplore section with a shop ad.",
                       style: TextStyle(
                         fontSize: 14,
                         fontWeight: FontWeight.w400,
                         fontFamily: poppinsRegular,
                         color: kblackColor,
                         overflow: TextOverflow.ellipsis
                       ))

                  ],
                ),
              ),
            ),

          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:56,right:55),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>WhatsappStatus()));
              },
              child: Container(
                padding: const EdgeInsets.only(left:17.07,right:17.07,bottom: 23.83),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 271.47,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/adbanner2.png",width: 144.52,height: 146.45),
                    SizedBox(height:15.86),
                    getText("Share on Whatsapp", 18, Colors.black, FontWeight.w500, poppinsMedium),
                    SizedBox(height:10),
                    Text("Promote your store on \n Whatsapp.",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: poppinsRegular,
                            color: kblackColor,
                            overflow: TextOverflow.ellipsis
                        ),
                      textAlign:TextAlign.center,
                      maxLines: 2,
                    )

                  ],
                ),
              ),
            ),

          ),

        ],
      ),
    );
  }
}
