import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class OrdersFulFillment extends StatefulWidget {
  const OrdersFulFillment({Key? key}) : super(key: key);

  @override
  State<OrdersFulFillment> createState() => _OrdersFulFillmentState();
}

class _OrdersFulFillmentState extends State<OrdersFulFillment> {
  int isSelectedCheck = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Order Fulfillment", true),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 17),
        child: Column(children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Row(
              children: [
                Image.asset("assets/images/customer.png",
                    width: 100, height: 100),
                SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    getText("Danny Anderson", 16, kblackColor, FontWeight.w600,
                        poppinsBold), //semibold
                    getText("Order #12345", 16, kblackColor, FontWeight.w500,
                        poppinsMedium),
                    getText("Order #12345", 16, kblackColor, FontWeight.w500,
                        poppinsMedium),
                    getText("Order Total  ₹5347.35 ", 16, kblackColor,
                        FontWeight.w500, poppinsMedium),
                    getText("13 Items", 16, kblackColor, FontWeight.w500,
                        poppinsMedium),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(children: [
            getText(
                "Item", 14, kLightTextColor, FontWeight.w500, poppinsMedium),
            Spacer(),
            getText("Qty", 14, kLightTextColor, FontWeight.w500, poppinsMedium),
            SizedBox(width: 20),
            getText("Fulfilled", 14, kLightTextColor, FontWeight.w500,
                poppinsMedium),
          ]),
          Divider(
            thickness: 0.5,
            color: kLightTextColor,
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              separatorBuilder: (BuildContext context, i) {
                return Divider(
                  thickness: 0.5,
                  color: kLightTextColor,
                );
              },
              itemCount: 7,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  height: 76,
                  child: Row(
                    children: [
                      Image.asset("assets/images/tatasalt.png",
                          width: 74, height: 74),
                      getText("Tata Salt - Iodised", 14, kLightTextColor,
                          FontWeight.w500, poppinsMedium),
                      Spacer(),
                      getText("1", 14, kLightTextColor, FontWeight.w500,
                          poppinsMedium),
                      SizedBox(
                        width: 50,
                      ),
                      customCheckBoxUI(
                            () {
                        setState(() {
                          if (isSelectedCheck!=index) {
                            isSelectedCheck = index;
                          }
                        });
                      },index)
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 6),
          // customBtn("Accept Order", kWhiteColor, ksolidredColor),
          // const SizedBox(height: 16),
          // customBtn("Message Customer", ksolidredColor, kWhiteColor),
          ButtonClass(
              ksolidredColor, 45, 343, "Accept Order",(){}, Colors.white, false),
          SizedBox(height: 16),
          ButtonClass(
              Colors.white, 45, 343, "Message Customer",(){}, ksolidredColor, true),
        ]),
      ),
    );
  }

  customBtn(String title, Color textcolor, Color color) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: ksolidredColor)),
      child: getText(title, 16, textcolor, FontWeight.w600, poppinsSemiBold),
    );
  }

  Widget customCheckBoxUI(pressed,index) {
    return InkWell(
      onTap: pressed,
      child: Container(
        alignment: Alignment.center,
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isSelectedCheck==index?ksolidredColor:Colors.white,
          border:Border.all(
            color: isSelectedCheck==index?ksolidredColor:kLightTextColor
          )
        ),
        child: isSelectedCheck==index
            ? Container(
                width: 10,
                height: 10,
                child: Image.asset(
                  "assets/images/check.png",
                  color: Colors.white,
                ),
              )
            : null,
      ),
    );
  }
}
