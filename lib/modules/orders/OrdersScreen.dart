import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop_seller/constant/AppFonts.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/orders/orderfullfill.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  int selectoption = 0;

  int isSelected = -1;

  List AllOrdersList = [
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Complete"
    },
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Open"
    },
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Processing"
    },
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Processing"
    }
  ];
  List OpenOrdersList = [
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Open"
    },
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Open"
    },
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Open"
    },
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Open"
    }
  ];
  List CompleteOrdersList = [
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Complete"
    },
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Complete"
    },
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Complete"
    },
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Complete"
    }
  ];

  List ProcessingOrdersList = [
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Processing"
    },
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Processing"
    },
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Processing"
    },
    {
      "CustomerName": "Bhavana Bahl",
      "OrderNo.": "Order #1000",
      "date": "May 5th",
      "itemNo": "Items: 23",
      "filledOn": "5/6/22",
      "amount": "₹654.92",
      "Status": "Processing"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Orders", false),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchBar(),
            const SizedBox(height: 16),
            customTabBar(),
            selectoption == 0
                ? customAllOrdersUI()
                : selectoption == 1
                    ? customAllOrdersUI()
                    : selectoption == 2
                        ? customAllOrdersUI()
                        : customAllOrdersUI()
          ],
        ),
      ),
    );
  }

  Widget searchUI() {
    return Container(
        height: 38,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: kblackColor, width: 0.5),
            borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          style: const TextStyle(
              fontSize: 14,
              color: kblackColor,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins'),
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              isDense: true,
              hintText: 'Search',
              hintStyle: const TextStyle(
                  fontSize: 14,
                  color: kLightTextColor,
                  fontWeight: FontWeight.w400,
                  fontFamily: poppinsRegular),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(top: 7, bottom: 8, left: 12),
                child: Image.asset(
                  'assets/images/search.png',
                  width: 22.6,
                  height: 23,
                  color: kIconColor,
                ),
              ),
              border: InputBorder.none),
        ));
  }

  Widget customTabBar() {
    return SizedBox(
      height: 43,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectoption = 0;
              });
            },
            child: SizedBox(
              height: 39,
              width: 68,
              child: Column(
                children: [
                  getText(
                      'All', 14, kblackColor, FontWeight.w600, poppinsSemiBold),
                  selectoption == 0
                      ? const SizedBox(
                          width: 82,
                          child: Divider(
                            color: ksolidredColor,
                            thickness: 3,
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectoption = 1;
              });
            },
            child: SizedBox(
              height: 39,
              width: 68,
              child: Column(
                children: [
                  getText('Open', 14, kblackColor, FontWeight.w600,
                      poppinsSemiBold),
                  selectoption == 1
                      ? const SizedBox(
                          width: 82,
                          child: Divider(
                            color: ksolidredColor,
                            thickness: 3,
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectoption = 2;
              });
            },
            child: SizedBox(
              height: 39,
              width: 80,
              child: Column(
                children: [
                  getText('Complete', 14, kblackColor, FontWeight.w600,
                      poppinsSemiBold),
                  selectoption == 2
                      ? const SizedBox(
                          width: 90,
                          child: Divider(
                            color: ksolidredColor,
                            thickness: 3,
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectoption = 3;
              });
            },
            child: SizedBox(
              height: 39,
              width: 80,
              child: Column(
                children: [
                  getText('Processing', 14, kblackColor, FontWeight.w600,
                      poppinsSemiBold),
                  selectoption == 3
                      ? const SizedBox(
                          width: 96,
                          child: Divider(
                            color: ksolidredColor,
                            thickness: 3,
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget customAllOrdersUI() {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: AllOrdersList.length,
        separatorBuilder: (BuildContext context, i) {
          return const SizedBox(height: 8);
        },
        itemBuilder: (BuildContext context, index) {
          var allItems = AllOrdersList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (
                    BuildContext context,
                  ) =>
                          OrdersFulFillment()));
              setState(() {});
            },
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                // height: 125,
                padding: const EdgeInsets.only(
                    top: 14, left: 24, right: 13, bottom: 20),
                child: Row(children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getText(allItems['CustomerName'], 16, kblackColor,
                            FontWeight.w500, poppinsMedium),
                        getText(allItems['OrderNo.'], 14, kblackColor,
                            FontWeight.w500, poppinsMedium),
                        getText(allItems['date'], 14, kLightTextColor,
                            FontWeight.w400, poppinsRegular),
                        getText(allItems['itemNo'], 14, kLightTextColor,
                            FontWeight.w400, poppinsRegular),
                      ]),
                  const SizedBox(
                    width: 15,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          getText("Filled on:", 16, kblackColor,
                              FontWeight.w600, poppinsMedium),
                          const SizedBox(
                            width: 2,
                          ),
                          getText(allItems['filledOn'], 16, ksolidredColor,
                              FontWeight.w600, poppinsMedium)
                        ]),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/images/check.png",
                                        width: 12.19, height: 9.73),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    getText("paid", 16, kLightTextColor,
                                        FontWeight.w400, poppinsRegular),
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                getText("₹654.92", 14, kblackColor,
                                    FontWeight.w400, poppinsRegular),
                              ],
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            const Spacer(),
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                getText("status", 14, kLightTextColor,
                                    FontWeight.w400, poppinsRegular),
                                const SizedBox(height: 2),
                                getText(allItems['Status'], 14, kblackColor,
                                    FontWeight.w400, poppinsRegular)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
          );
        },
      ),
    );
  }

  searchBar() {
    return Container(
        height: 40,
        // width: 232,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: kIconColor),
            borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          style: const TextStyle(
              fontSize: 14,
              color: kblackColor,
              fontWeight: FontWeight.w400,
              fontFamily: poppinsRegular),
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              isDense: true,
              hintText: 'Search',
              hintStyle: const TextStyle(
                  fontSize: 14,
                  color: kLightTextColor,
                  fontWeight: FontWeight.w400,
                  fontFamily: poppinsRegular),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(top: 7, bottom: 8, left: 12),
                child: Image.asset(
                  'assets/images/search.png',
                  width: 22.5,
                  height: 23.35,
                  color: kIconColor,
                ),
              ),
              border: InputBorder.none),
        ));
  }
}
