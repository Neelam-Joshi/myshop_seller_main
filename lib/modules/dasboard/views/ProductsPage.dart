import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myshop_seller/constant/AppTextStyle.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
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
                    decoration: InputDecoration.collapsed(hintText: "Search Product"),
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
                      child: Row(
                        children: [
                          const FaIcon(FontAwesomeIcons.bowlFood, size: 50,),
                          SizedBox(width: 15,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Test Product Name", style: AppTextStyle.screenContentStyle.copyWith(
                                  color: Colors.black54,
                                  fontSize: 16
                                ),),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Views  ", style: AppTextStyle.screenContentStyle.copyWith(
                                            color: Colors.black38,
                                            fontSize: 14
                                        ),),
                                        const SizedBox(height: 10,),
                                        Text("1234  ", style: AppTextStyle.screenContentStyle.copyWith(
                                            color: Colors.black54,
                                            fontSize: 16
                                        ),),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Orders  ", style: AppTextStyle.screenContentStyle.copyWith(
                                            color: Colors.black38,
                                          fontSize: 14
                                        ),),
                                        const SizedBox(height: 10,),
                                        Text("44  ", style: AppTextStyle.screenContentStyle.copyWith(
                                            color: Colors.black54,
                                            fontSize: 16
                                        ),),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Sales  ", style: AppTextStyle.screenContentStyle.copyWith(
                                            color: Colors.black38,
                                            fontSize: 14
                                        ),),
                                        SizedBox(height: 10,),
                                        Text("\$2345.00", style: AppTextStyle.screenContentStyle.copyWith(
                                            color: Colors.black54,
                                          fontSize: 16
                                        ),),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}