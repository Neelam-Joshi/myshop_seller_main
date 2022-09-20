import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myshop_seller/constant/AppColor.dart';

import '../../../constant/AppTextStyle.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.black54,
                          style: BorderStyle.solid,
                          width: 1
                      )
                  ),
                  child: const TextField(
                    decoration: InputDecoration.collapsed(hintText: "Search Order"),
                  ),
                ),
              ),
              SizedBox(width: 10 ,),
              FaIcon(FontAwesomeIcons.filter),
              SizedBox(width: 10 ,),
            ],
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, position) {
                    return Container(
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                offset: Offset(2,2)
                            )
                          ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Bhavana, Bagl", style: AppTextStyle.screenTitleStyle400,),
                              RichText(text: TextSpan(
                                  text: "Filed On: ",
                                  style: AppTextStyle.screenTitleStyle400,
                                  children: [
                                    TextSpan(
                                        text:"06/09/2022",
                                        style: AppTextStyle.screenTitleStyle400.copyWith(
                                          color: AppColor.appColor
                                        )
                                    )
                                  ]
                              ), ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text("Order #12234", style: AppTextStyle.screenTitleStyle400,),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("May 5th", style: AppTextStyle.screenTitleStyle400.copyWith(
                                  color: Colors.black38
                              ),),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Paid", style: AppTextStyle.screenTitleStyle400.copyWith(
                                    color: Colors.black38
                                  ),),
                                  Text("\$300", style: AppTextStyle.screenTitleStyle400,)
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Status", style: AppTextStyle.screenTitleStyle400.copyWith(
                                      color: Colors.black38
                                  ),),
                                  Text("Complete", style: AppTextStyle.screenTitleStyle400,)
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}