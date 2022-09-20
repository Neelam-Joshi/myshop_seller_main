import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

Widget sendMessage(BuildContext context, String msg) {
  return Padding(
    padding: const EdgeInsets.only(top: 25, left: 77, right: 18),
    child: Container(
      padding: const EdgeInsets.only(left: 11, top: 10, bottom: 10, right: 16),
      decoration: BoxDecoration(
          color: ksolidredColor,
          border: Border.all(color: ksolidredColor),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10))),
      child: getText(msg, 14, kWhiteColor, FontWeight.w400, poppinsRegular),
    ),
  );
}
