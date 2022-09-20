import 'package:flutter/material.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

import '../../../constant/colorconstant.dart';

Widget receiverMessage(BuildContext context, String msg) {
  return Padding(
    padding: const EdgeInsets.only(top: 25, left: 13, right: 82),
    child: Container(
      padding: const EdgeInsets.only(left: 11, top: 10, bottom: 10, right: 16),
      decoration: BoxDecoration(
          color: kWhiteColor,
          border: Border.all(color: kblackColor),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: getText(msg, 14, kblackColor, FontWeight.w400, poppinsRegular),
    ),
  );
}
