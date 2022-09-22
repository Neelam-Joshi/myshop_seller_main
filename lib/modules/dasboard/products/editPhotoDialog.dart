import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class EditPhotoDialog extends StatefulWidget {
  const EditPhotoDialog({Key? key}) : super(key: key);

  @override
  State<EditPhotoDialog> createState() => _EditPhotoDialogState();
}

class _EditPhotoDialogState extends State<EditPhotoDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(

      content: Container(
        decoration:BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(5),
        ),
        height: 250,
        child: Image.asset("assets/images/fruits3.png",width: 299.9,height: 300,),
      ),
      actions: [
        Row(
          children: [
            Flexible(
              child: InkWell(
                onTap:(){},
                child: Container(
                  decoration: BoxDecoration(
                    color:ksolidredColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  height: 31, width:144,
                  alignment: Alignment.center,
                  child: getText("Edit Photo", 16, kWhiteColor, FontWeight.w400, poppinsRegular),
                ),
              ),
            ),
            const SizedBox(width:8),
            Flexible(
              child:  InkWell(
                onTap:(){},
                child: Container(
                  decoration: BoxDecoration(
                      color:kWhiteColor,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                          color: const Color(0xffDDDDDD),
                          width:0.5
                      )
                  ),
                  height: 31, width:144,
                  alignment: Alignment.center,
                  child: getText("Delete", 16, kblackColor, FontWeight.w400, poppinsRegular),
                ),
              ),
            )

          ],
        )

      ],
    );
  }
}
