// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:myshop_seller/constant/AppFonts.dart';
// import 'package:myshop_seller/constant/colorconstant.dart';
// import 'package:myshop_seller/modules/widgets/appBar.dart';
// import 'package:myshop_seller/modules/widgets/gettext.dart';
//
// class Orders extends StatefulWidget {
//   const Orders({Key? key}) : super(key: key);
//
//   @override
//   State<Orders> createState() => _OrdersState();
// }
//
// class _OrdersState extends State<Orders> {
//   int selectoption = 0;
//
//   List AllOrdersList = [
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Complete"
//     },
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Open"
//     },
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Processing"
//     },
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Processing"
//     }
//   ];
//   List OpenOrdersList = [
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Open"
//     },
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Open"
//     },
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Open"
//     },
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Open"
//     }
//   ];
//   List CompleteOrdersList = [
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Complete"
//     },
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Complete"
//     },
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Complete"
//     },
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Complete"
//     }
//   ];
//
//   List ProcessingOrdersList = [
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Processing"
//     },
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Processing"
//     },
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Processing"
//     },
//     {
//       "CustomerName": "Bhavana Bahl",
//       "OrderNo.": "Order #1000",
//       "date": "May 5th",
//       "itemNo": "Items: 23",
//       "filledOn": "5/6/22",
//       "amount": "₹654.92",
//       "Status": "Processing"
//     }
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appBar(context, "Orders", false),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 16, right: 16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             searchUI(),
//             const SizedBox(height: 16),
//             customTabBar(),
//             customAllOrdersUI()
//             // selectoption == 0
//             //     ? customAllOrdersUI()
//             //     : selectoption == 1
//             //         ? customOpenOrdersUI()
//             //         : selectoption == 2
//             //             ? customCompleteOrdersUI()
//             //             : customProcsessingUI()
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget customTabBar() {
//     return Container(
//       height: 43,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Flexible(
//             child: GestureDetector(
//               onTap: () {
//                 setState(() {
//                   selectoption = 0;
//                 });
//               },
//               child: SizedBox(
//                 height: 43,
//                 // width: 100,
//                 child: Column(
//                   children: [
//                     getText(
//                         'All', 18, kblackColor, FontWeight.w600, poppinsMedium),
//                     selectoption == 0
//                         ? Container(
//                             width: 82,
//                             child: const Divider(
//                               color: ksolidredColor,
//                               thickness: 2,
//                             ),
//                           )
//                         : const SizedBox()
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Flexible(
//             child: GestureDetector(
//               onTap: () {
//                 setState(() {
//                   selectoption = 1;
//                 });
//               },
//               child: SizedBox(
//                 // width: 100,
//                 height: 43,
//                 child: Column(
//                   children: [
//                     getText('Open', 18, kblackColor, FontWeight.w500,
//                         poppinsMedium),
//                     selectoption == 1
//                         ? Container(
//                             width: 82,
//                             child: const Divider(
//                               color: ksolidredColor,
//                               thickness: 2,
//                             ),
//                           )
//                         : const SizedBox()
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Flexible(
//             child: GestureDetector(
//               onTap: () {
//                 setState(() {
//                   selectoption = 3;
//                 });
//               },
//               child: SizedBox(
//                 // width: 100,
//                 height: 43,
//                 child: Column(
//                   children: [
//                     getText('Complete', 18, kblackColor, FontWeight.w500,
//                         poppinsMedium),
//                     selectoption == 3
//                         ? Container(
//                             width: 82,
//                             child: const Divider(
//                               color: ksolidredColor,
//                               thickness: 2,
//                             ),
//                           )
//                         : const SizedBox()
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Flexible(
//             child: GestureDetector(
//               onTap: () {
//                 setState(() {
//                   selectoption = 4;
//                 });
//               },
//               child: SizedBox(
//                 // width: 100,
//                 height: 43,
//                 child: Column(
//                   children: [
//                     getText('Processing', 18, kblackColor, FontWeight.w500,
//                         poppinsMedium),
//                     selectoption == 4
//                         ? Container(
//                             width: 82,
//                             child: const Divider(
//                               color: ksolidredColor,
//                               thickness: 2,
//                             ),
//                           )
//                         : const SizedBox()
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget searchUI() {
//     return Container(
//         height: 38,
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//             border: Border.all(color: kblackColor, width: 0.5),
//             borderRadius: BorderRadius.circular(10)),
//         child: TextFormField(
//           style: const TextStyle(
//               fontSize: 14,
//               color: kblackColor,
//               fontWeight: FontWeight.w400,
//               fontFamily: 'Poppins'),
//           textAlignVertical: TextAlignVertical.center,
//           decoration: InputDecoration(
//               isDense: true,
//               hintText: 'Search',
//               hintStyle: const TextStyle(
//                   fontSize: 14,
//                   color: kLightTextColor,
//                   fontWeight: FontWeight.w400,
//                   fontFamily: poppinsRegular),
//               prefixIcon: Padding(
//                 padding: const EdgeInsets.only(top: 7, bottom: 8, left: 12),
//                 child: Image.asset(
//                   'assets/images/search.png',
//                   width: 22.6,
//                   height: 23,
//                   color: kIconColor,
//                 ),
//               ),
//               border: InputBorder.none),
//         ));
//   }
//
//   // Widget customTabBar() {
//   //   return Container(
//   //     height: 43,
//   //     child: Row(
//   //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //       children: [
//   //         GestureDetector(
//   //           onTap: () {
//   //             setState(() {
//   //               selectoption = 0;
//   //             });
//   //           },
//   //           child: Flexible(
//   //             child: SizedBox(
//   //               height: 39,
//   //               width: 68,
//   //               child: Column(
//   //                 children: [
//   //                   getText('All', 14, kblackColor, FontWeight.w600,
//   //                       AppFonts.poppinsMedium),
//   //                   selectoption == 0
//   //                       ? Container(
//   //                           width: 82,
//   //                           child: const Divider(
//   //                             color: ksolidredColor,
//   //                             thickness: 3,
//   //                           ),
//   //                         )
//   //                       : const SizedBox()
//   //                 ],
//   //               ),
//   //             ),
//   //           ),
//   //         ),
//   //         GestureDetector(
//   //           onTap: () {
//   //             setState(() {
//   //               selectoption = 1;
//   //             });
//   //           },
//   //           child: Flexible(
//   //             child: SizedBox(
//   //               height: 39,
//   //               width: 68,
//   //               child: Column(
//   //                 children: [
//   //                   getText('Open', 14, kblackColor, FontWeight.w500,
//   //                       AppFonts.poppinsMedium),
//   //                   selectoption == 1
//   //                       ? Container(
//   //                           width: 82,
//   //                           child: const Divider(
//   //                             color: ksolidredColor,
//   //                             thickness: 3,
//   //                           ),
//   //                         )
//   //                       : const SizedBox()
//   //                 ],
//   //               ),
//   //             ),
//   //           ),
//   //         ),
//   //         GestureDetector(
//   //           onTap: () {
//   //             setState(() {
//   //               selectoption = 2;
//   //             });
//   //           },
//   //           child: Flexible(
//   //             child: SizedBox(
//   //               height: 60,
//   //               width: 68,
//   //               child: Column(
//   //                 children: [
//   //                   getText('Processing', 14, kblackColor, FontWeight.w500,
//   //                       AppFonts.poppinsMedium),
//   //                   selectoption == 2
//   //                       ? Container(
//   //                           width: 82,
//   //                           child: const Divider(
//   //                             color: ksolidredColor,
//   //                             thickness: 3,
//   //                           ),
//   //                         )
//   //                       : const SizedBox()
//   //                 ],
//   //               ),
//   //             ),
//   //           ),
//   //         ),
//   //         GestureDetector(
//   //           onTap: () {
//   //             setState(() {
//   //               selectoption = 3;
//   //             });
//   //           },
//   //           child: Flexible(
//   //             child: SizedBox(
//   //               height: 60,
//   //               width: 68,
//   //               child: Column(
//   //                 children: [
//   //                   getText('Complete', 14, kblackColor, FontWeight.w500,
//   //                       AppFonts.poppinsMedium),
//   //                   selectoption == 3
//   //                       ? Container(
//   //                           width: 82,
//   //                           child: const Divider(
//   //                             color: ksolidredColor,
//   //                             thickness: 3,
//   //                           ),
//   //                         )
//   //                       : const SizedBox()
//   //                 ],
//   //               ),
//   //             ),
//   //           ),
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }
//
//   Widget customAllOrdersUI() {
//     return Expanded(
//       child: ListView.separated(
//         shrinkWrap: true,
//         physics: ScrollPhysics(),
//         itemCount: AllOrdersList.length,
//         separatorBuilder: (BuildContext context, i) {
//           return SizedBox(height: 8);
//         },
//         itemBuilder: (BuildContext context, index) {
//           var allItems = AllOrdersList[index];
//           return Card(
//             elevation: 2,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Container(
//               // height: 125,
//               padding: const EdgeInsets.fromLTRB(24, 14, 27, 20),
//               child: Column(
//                 children: [
//                   Row(crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                     Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           getText(allItems['CustomerName'], 16, kblackColor,
//                               FontWeight.w500, AppFonts.poppinsMedium),
//                           getText(allItems['OrderNo.'], 14, kblackColor,
//                               FontWeight.w500, AppFonts.poppinsMedium),
//                           getText(allItems['date'], 14, kblackColor,
//                               FontWeight.w500, AppFonts.poppinsMedium),
//                           getText(allItems['itemNo'], 14, kblackColor,
//                               FontWeight.w500, AppFonts.poppinsMedium),
//                         ]),
//                     const SizedBox(
//                       width: 15,
//                     ),
//                     Row(children: [
//                       getText("Filled on:", 16, kblackColor, FontWeight.w500,
//                           AppFonts.poppinsMedium),
//                       const SizedBox(
//                         width: 2,
//                       ),
//                       getText(allItems['filledOn'], 16, kblackColor,
//                           FontWeight.w500, AppFonts.poppinsMedium)
//                     ]),
//                   ]),
//                   const SizedBox(height: 2,),
//                   // Row(
//                   //   children: [
//                   //     Column(
//                   //       children: [
//                   //         getText(allItems['date'], 14, kLightTextColor,
//                   //             FontWeight.w400, AppFonts.poppinsRegular),
//                   //         getText(allItems['itemNo'], 14, kLightTextColor,
//                   //             FontWeight.w400, AppFonts.poppinsRegular),
//                   //       ],
//                   //     ),
//                   //     const Spacer(),
//                   //     Column(children: [
//                   //       Row(children: [
//                   //         Image.asset(
//                   //           "assets/images/check.png",
//                   //           width: 12,
//                   //           height: 9,
//                   //         ),
//                   //         const SizedBox(
//                   //           width: 2,
//                   //         ),
//                   //         getText("Paid", 16, kLightTextColor, FontWeight.w400,
//                   //             AppFonts.poppinsRegular),
//                   //       ]),
//                   //       const SizedBox(height: 2),
//                   //       getText(allItems['amount'], 14, kblackColor,
//                   //           FontWeight.w500, AppFonts.poppinsMedium),
//                   //     ]),
//                   //     const Spacer(),
//                   //     Column(children: [
//                   //       getText("Status", 16, kLightTextColor, FontWeight.w400,
//                   //           AppFonts.poppinsRegular),
//                   //       getText(allItems['Status'], 14, kblackColor,
//                   //           FontWeight.w500, AppFonts.poppinsMedium),
//                   //     ])
//                   //   ],
//                   // )
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   Widget customOpenOrdersUI() {
//     return Expanded(
//       child: ListView.separated(
//         shrinkWrap: true,
//         physics: ScrollPhysics(),
//         itemCount: OpenOrdersList.length,
//         separatorBuilder: (BuildContext context, i) {
//           return const SizedBox(height: 8);
//         },
//         itemBuilder: (BuildContext context, index) {
//           var allItems = OpenOrdersList[index];
//           return Card(
//             elevation: 2,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Container(
//               // height: 125,
//               padding: const EdgeInsets.fromLTRB(24, 14, 27, 20),
//               child: Column(
//                 children: [
//                   Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
//                     Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           getText(allItems['CustomerName'], 16, kblackColor,
//                               FontWeight.w500, AppFonts.poppinsMedium),
//                           getText(allItems['OrderNo.'], 14, kblackColor,
//                               FontWeight.w500, AppFonts.poppinsMedium),
//                         ]),
//                     const SizedBox(
//                       width: 15,
//                     ),
//                     Row(children: [
//                       getText("Filled on:", 16, kblackColor, FontWeight.w500,
//                           AppFonts.poppinsMedium),
//                       const SizedBox(
//                         width: 2,
//                       ),
//                       getText(allItems['filledOn'], 16, kblackColor,
//                           FontWeight.w500, AppFonts.poppinsMedium)
//                     ]),
//                   ]),
//                   const SizedBox(
//                     height: 2,
//                   ),
//                   Row(
//                     children: [
//                       Column(
//                         children: [
//                           getText(allItems['date'], 14, kLightTextColor,
//                               FontWeight.w400, AppFonts.poppinsRegular),
//                           getText(allItems['itemNo'], 14, kLightTextColor,
//                               FontWeight.w400, AppFonts.poppinsRegular),
//                         ],
//                       ),
//                       const Spacer(),
//                       Column(children: [
//                         Row(children: [
//                           Image.asset(
//                             "assets/images/check.png",
//                             width: 12,
//                             height: 9,
//                           ),
//                           const SizedBox(
//                             width: 2,
//                           ),
//                           getText("Paid", 16, kLightTextColor, FontWeight.w400,
//                               AppFonts.poppinsRegular),
//                         ]),
//                         const SizedBox(height: 2),
//                         getText(allItems['amount'], 14, kblackColor,
//                             FontWeight.w500, AppFonts.poppinsMedium),
//                       ]),
//                       const Spacer(),
//                       Column(children: [
//                         getText("Status", 16, kLightTextColor, FontWeight.w400,
//                             AppFonts.poppinsRegular),
//                         getText(allItems['Status'], 14, kblackColor,
//                             FontWeight.w500, AppFonts.poppinsMedium),
//                       ])
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   Widget customCompleteOrdersUI() {
//     return Expanded(
//       child: ListView.separated(
//         shrinkWrap: true,
//         physics: ScrollPhysics(),
//         itemCount: ProcessingOrdersList.length,
//         separatorBuilder: (BuildContext context, i) {
//           return SizedBox(height: 8);
//         },
//         itemBuilder: (BuildContext context, index) {
//           var allItems = ProcessingOrdersList[index];
//           return Card(
//             elevation: 2,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Container(
//               // height: 125,
//               padding: const EdgeInsets.fromLTRB(24, 14, 27, 20),
//               child: Column(
//                 children: [
//                   Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
//                     Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           getText(allItems['CustomerName'], 16, kblackColor,
//                               FontWeight.w500, AppFonts.poppinsMedium),
//                           getText(allItems['OrderNo.'], 14, kblackColor,
//                               FontWeight.w500, AppFonts.poppinsMedium),
//                         ]),
//                     const SizedBox(
//                       width: 15,
//                     ),
//                     Row(children: [
//                       getText("Filled on:", 16, kblackColor, FontWeight.w500,
//                           AppFonts.poppinsMedium),
//                       const SizedBox(
//                         width: 2,
//                       ),
//                       getText(allItems['filledOn'], 16, kblackColor,
//                           FontWeight.w500, AppFonts.poppinsMedium)
//                     ]),
//                     Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(children: [
//                             getText("Filled on:", 16, kblackColor,
//                                 FontWeight.w500, AppFonts.poppinsMedium),
//                             SizedBox(
//                               width: 2,
//                             ),
//                             getText(allItems['filledOn'], 16, kblackColor,
//                                 FontWeight.w500, AppFonts.poppinsMedium)
//                           ]),
//                           const SizedBox(
//                             height: 16,
//                           ),
//                           getText(allItems['date'], 14, kLightTextColor,
//                               FontWeight.w400, AppFonts.poppinsRegular),
//                           getText(allItems['itemNo'], 14, kLightTextColor,
//                               FontWeight.w400, AppFonts.poppinsRegular),
//                         ])
//                   ]),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   Widget customProcsessingUI() {
//     return Expanded(
//       child: ListView.separated(
//         shrinkWrap: true,
//         physics: ScrollPhysics(),
//         itemCount: CompleteOrdersList.length,
//         separatorBuilder: (BuildContext context, i) {
//           return SizedBox(height: 8);
//         },
//         itemBuilder: (BuildContext context, index) {
//           var allItems = CompleteOrdersList[index];
//           return Card(
//             elevation: 2,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Container(
//               height: 125,
//               padding: const EdgeInsets.fromLTRB(24, 14, 27, 20),
//               child: Row(children: [
//                 Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//                   getText(allItems['CustomerName'], 16, kblackColor,
//                       FontWeight.w500, AppFonts.poppinsMedium),
//                   getText(allItems['OrderNo.'], 14, kblackColor,
//                       FontWeight.w500, AppFonts.poppinsMedium),
//                   getText(allItems['date'], 14, kLightTextColor,
//                       FontWeight.w400, AppFonts.poppinsRegular),
//                   getText(allItems['itemNo'], 14, kLightTextColor,
//                       FontWeight.w400, AppFonts.poppinsRegular),
//                 ]),
//                 SizedBox(
//                   width: 15,
//                 ),
//                 Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//                   Row(children: [
//                     getText("Filled on:", 16, kblackColor, FontWeight.w500,
//                         AppFonts.poppinsMedium),
//                     SizedBox(
//                       width: 2,
//                     ),
//                     getText(allItems['filledOn'], 16, kblackColor,
//                         FontWeight.w500, AppFonts.poppinsMedium)
//                   ]),
//                   SizedBox(
//                     height: 16,
//                   ),
//                   Row(
//                     children: [
//                       Column(children: [
//                         Row(children: [
//                           Image.asset(
//                             "assets/images/check.png",
//                             width: 12,
//                             height: 9,
//                           ),
//                           SizedBox(
//                             width: 2,
//                           ),
//                           getText("Paid", 16, kLightTextColor, FontWeight.w400,
//                               AppFonts.poppinsRegular),
//                         ]),
//                         SizedBox(height: 5),
//                         getText(allItems['amount'], 14, kblackColor,
//                             FontWeight.w500, AppFonts.poppinsMedium),
//                       ]),
//                       SizedBox(
//                         width: 40,
//                       ),
//                       Column(children: [
//                         getText("Status", 16, kLightTextColor, FontWeight.w400,
//                             AppFonts.poppinsRegular),
//                         getText(allItems['Status'], 14, kblackColor,
//                             FontWeight.w500, AppFonts.poppinsMedium),
//                       ])
//                     ],
//                   ),
//                 ])
//               ]),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
