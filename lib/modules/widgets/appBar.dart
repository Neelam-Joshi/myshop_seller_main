import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

import '../../constant/AppFonts.dart';

AppBar appBar(BuildContext context, title, isBackNavigation) {
  return AppBar(
    leading: isBackNavigation
        ? IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/images/arrowback.png",
              width: 20,
              height: 20,
            ),
          )
        : null,
    centerTitle: true,
    title: getText(title, 24, kblackColor, FontWeight.w600, poppinsSemiBold),
  );
}
