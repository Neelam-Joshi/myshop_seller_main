import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myshop_seller/constant/AppColor.dart';
import 'package:myshop_seller/constant/AppFonts.dart';

class ViewShopByQRPage extends StatefulWidget {
  const ViewShopByQRPage({Key? key}) : super(key: key);

  @override
  State<ViewShopByQRPage> createState() => _ViewShopByQRPageState();
}

class _ViewShopByQRPageState extends State<ViewShopByQRPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.appColor,
        child: Column(
          children: [
            const SizedBox(height: 40,),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                    child: const Icon(CupertinoIcons.back, size: 25, color: Colors.white,)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.225,
                ),
                Text("Long Store Name", style: TextStyle(
                    color: Colors.white,
                    fontFamily: AppFonts.poppinsMedium,
                    fontSize: 20,
                    decoration: TextDecoration.none
                ),)
              ],
            ),
            const SizedBox(height: 50,),
            Text("People can scan your code to instantly\nview your shop", textAlign: TextAlign.center, style: TextStyle(
                color: Colors.white,
                fontFamily: AppFonts.poppinsRegular,
                fontSize: 12,
                decoration: TextDecoration.none,
                letterSpacing: 2
            ),),
            const SizedBox(height: 20,),

            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.only(
                      topLeft:  Radius.circular(70),

                    )
                ),
                child: Column(

                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const[
                               BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,
                                  offset: Offset(2, 2)
                              )
                            ]
                        ),
                        child: const FaIcon(FontAwesomeIcons.qrcode, size: 300,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(AppColor.appColor),
                              padding: MaterialStateProperty.all(const EdgeInsets.all(12))
                          ), child: const Text("Share Code"),),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}