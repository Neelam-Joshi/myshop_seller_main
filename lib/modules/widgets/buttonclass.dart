import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop_seller/constant/AppFonts.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';


Widget ButtonClass(Color color,double height,double width,title, Function() ontap ,Color colortext,isBorder,) {
  return InkWell(
    onTap:ontap,
    child: Container(
      decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(4),
          border: isBorder?Border.all(
              color: ksolidredColor,
              width:0.5
          ):null
      ),
      height: height, width:width,
      alignment: Alignment.center,
      child: getText(title, 16, colortext, FontWeight.w600, AppFonts.poppinsBold),
    ),
  );
}

