// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:myshop_seller/constant/AppColor.dart';

// import '../../../constant/AppTextStyle.dart';
// import '../../../constant/PageConstant.dart';

// class SubscriptionPage extends StatefulWidget {
//   const SubscriptionPage({Key? key}) : super(key: key);

//   @override
//   State<SubscriptionPage> createState() => _SubscriptionPageState();
// }

// class _SubscriptionPageState extends State<SubscriptionPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         centerTitle: true,
//         title: const Text("Subscription", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24, color: Colors.black),),
//         iconTheme: const IconThemeData(
//           color: Colors.black,
//         ),
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Center(child: Text("Choose your Plan", style: AppTextStyle.screenTitleStyle400,)),
//             const SizedBox(height: 30,),
//             Expanded(
//               child: ListView.builder(
//                   itemCount: 4,
//                   itemBuilder: (context, position) {
//                 return InkWell(
//                   onTap: () {
//                     showSubscriptionInfo();
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.all(20),
//                     margin: const EdgeInsets.all(15),
//                     decoration:  BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(15),
//                       boxShadow: const [
//                         BoxShadow(
//                           color: Colors.black12,
//                           blurRadius: 10,
//                           offset: Offset(2,2)
//                         )
//                       ]
//                     ),
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Text("Basic", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),),
//                             Text("\$200.00 /mon", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: AppColor.appColor),),
//                           ],
//                         ),
//                         const SizedBox(height: 10,),
//                         Row(
//                           children: [
//                             Expanded(
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     children: [
//                                       Icon(Icons.arrow_right, size: 30, color: AppColor.appColor,),
//                                       const Text("Just the basic"),
//                                     ],
//                                   ),
//                                   const SizedBox(height: 10,),
//                                   Row(
//                                     children: [
//                                       Icon(Icons.arrow_right, size: 30, color: AppColor.appColor,),
//                                       const Text("Just the basic"),
//                                     ],
//                                   ),
//                                   const SizedBox(height: 10,),
//                                   Row(
//                                     children: [
//                                       Icon(Icons.arrow_right, size: 30, color: AppColor.appColor,),
//                                       const Text("Just the basic"),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Image.asset("assets/images/subscription_sample.png", width: 70, height: 100,)
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 );
//               }),
//             ),
//           ],
//         ),
//       ) ,
//     );
//   }


//   void showSubscriptionInfo() {
//       /*showGeneralDialog(context: context, pageBuilder: (cont, a1, a2) {
//         return Container(
//           padding: const EdgeInsets.all(10),
//           decoration: const BoxDecoration(
//               color: Colors.white
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Row(
//                 children: [
//                   Icon(Icons.arrow_right, size: 30, color: AppColor.appColor,),
//                   const Text("Just the basic", style: TextStyle(fontSize: 14),),
//                 ],
//               ),
//               const SizedBox(height: 10,),
//               Row(
//                 children: [
//                   Icon(Icons.arrow_right, size: 30, color: AppColor.appColor,),
//                   const Text("Just the basic", style: TextStyle(fontSize: 14),),
//                 ],
//               ),
//               const SizedBox(height: 10,),
//               Row(
//                 children: [
//                   Icon(Icons.arrow_right, size: 30, color: AppColor.appColor,),
//                   const Text("Just the basic", style: TextStyle(fontSize: 14),),
//                 ],
//               ),
//               Image.asset("assets/images/subscription_sample.png", width: 70, height: 100,)
//             ],
//           ),
//         );
//       });*/


//       showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return Dialog(
//               shape: RoundedRectangleBorder(
//                   borderRadius:
//                   BorderRadius.circular(20.0)), //this right here
//               child: Container(
//                 decoration:  BoxDecoration(
//                     color: Colors.white,
//                   borderRadius: BorderRadius.circular(15)
//                 ),
//                 child:Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Container(
//                       width: MediaQuery.of(context).size.width,
//                       padding: const EdgeInsets.all(15),
//                       decoration: BoxDecoration(
//                         color: AppColor.appColor,
//                           borderRadius: const BorderRadius.only(
//                             topLeft: Radius.circular(15),
//                             topRight: Radius.circular(15)
//                           )
//                       ),
//                       child: Column(
//                         children:  [
//                           Align(
//                             alignment: Alignment.topRight,
//                             child: InkWell(
//                               onTap: () {
//                                 Navigator.pop(context);
//                               },
//                                 child: const Icon(CupertinoIcons.clear, color: Colors.white54, size: 30,)),
//                           ),
//                           const Text("Premium Plan", style:  TextStyle(color:  Colors.white, fontSize: 24, fontWeight: FontWeight.w600),),
//                           const Text("\$500.00/mon", style:  TextStyle(color:  Colors.white, fontSize: 18, fontWeight: FontWeight.w600),)
//                         ],
//                       ),
//                     ),

//                     const SizedBox(height: 30,),
//                     Row(
//                       children: [
//                         Icon(Icons.arrow_right, size: 30, color: AppColor.appColor,),
//                         const Text("Just the basic", style: TextStyle(fontSize: 14),),
//                       ],
//                     ),
//                     const SizedBox(height: 10,),
//                     Row(
//                       children: [
//                         Icon(Icons.arrow_right, size: 30, color: AppColor.appColor,),
//                         const Text("Just the basic", style: TextStyle(fontSize: 14),),
//                       ],
//                     ),
//                     const SizedBox(height: 10,),
//                     Row(
//                       children: [
//                         Icon(Icons.arrow_right, size: 30, color: AppColor.appColor,),
//                         const Text("Just the basic", style: TextStyle(fontSize: 14),),
//                       ],
//                     ),
//                     Image.asset("assets/images/subscription_sample.png", width: 100, height: 100, fit: BoxFit.contain,),
//                     const SizedBox(height: 10,),

//                     SizedBox(
//                       width: MediaQuery.of(context).size.width,
//                       child: ElevatedButton(onPressed: () {
//                         Navigator.pushNamed(context, PageConstant.dashboardPage);
//                       }, style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all(AppColor.appColor),
//                         padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
//                       ), child: const Text("Continue"),),
//                     )
//                   ],
//                 )
//               ),
//             );
//           });
//   }
  
// }