import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/AppColor.dart';

class CustomerReviewPage extends StatefulWidget {
  const CustomerReviewPage({Key? key}) : super(key: key);

  @override
  State<CustomerReviewPage> createState() => _CustomerReviewPageState();
}

class _CustomerReviewPageState extends State<CustomerReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appColor,
      body: Stack(
        children: [
            Positioned(
              top: 100,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:  BorderRadius.only(
                  topLeft: Radius.circular(40)
                )
              ),

            )),


          Positioned(top: 0, bottom: 0, left: 0, right: 0, child: Column(
            children: [

            ],
          ), )
        ],
      )
    );
  }
}