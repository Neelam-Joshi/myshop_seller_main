import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myshop_seller/constant/AppColor.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/settings/longshopname.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

import '../../constant/AppFonts.dart';
import '../settings/marketing/choosebanner.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool changeTabBar = false;
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: ksolidredColor,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 54, right: 16, bottom: 28.16),
            child: Column(
              children: [
                Row(
                  children: [
                    const Spacer(),
                    getText('Long Shop Name', 24, kWhiteColor, FontWeight.w600,
                        poppinsSemiBold),
                    const SizedBox(
                      width: 41,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LongShopName()));
                      },
                      child: Image.asset(
                        'assets/images/setting.png',
                        width: 22,
                        height: 22.98,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    )
                  ],
                ),
                const SizedBox(
                  height: 28.94,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  padding: const EdgeInsets.only(
                      top: 18.09, bottom: 18.84, left: 20, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffFF8158),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          getText('Today’s Store Hours :', 15, kWhiteColor,
                              FontWeight.w600, poppinsSemiBold),
                          getText('8:30AM - 6:30PM', 15, kWhiteColor,
                              FontWeight.w500, poppinsMedium),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          getText('accepting online orders :', 15, kWhiteColor,
                              FontWeight.w600, poppinsSemiBold),
                          const SizedBox(
                            width: 15,
                          ),

                          InkWell(
                            onTap: () {
                              print('ol');
                              setState(() {
                                if (changeTabBar == false) {
                                  changeTabBar = true;
                                  print(changeTabBar);
                                } else {
                                  changeTabBar = false;
                                }
                              });
                            },
                            child: Container(
                              width: 47,
                              height: 24,
                              decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: BorderRadius.circular(18)),
                              alignment: changeTabBar == true
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 1, right: 1),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (changeTabBar != false) {
                                      changeTabBar = true;
                                    } else {
                                      changeTabBar = false;
                                    }
                                  });
                                },
                                child: Container(
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                      color: changeTabBar == true
                                          ? ksolidredColor
                                          : const Color(0xffC0C0C0),
                                      borderRadius: BorderRadius.circular(100)),
                                ),
                              ),
                            ),
                          )

                          // FlutterSwitch(
                          //   width: 45.0,
                          //   height: 24.0,
                          //   toggleSize: 18.0,
                          //   value: status,
                          //   inactiveColor: kWhiteColor,
                          //   activeTextColor: kWhiteColor,
                          //   inactiveTextColor: kWhiteColor,

                          //   activeColor: kWhiteColor,
                          //   inactiveToggleColor: const Color(0xffC0C0C0),
                          //   activeToggleColor: ksolidredColor,
                          //   borderRadius: 18.0,
                          //   // padding: 8.0,
                          //   showOnOff: true,
                          //   onToggle: (val) {
                          //     setState(() {
                          //       status = val;
                          //     });
                          //   },
                          // ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                children: [
                  revenueUI(),
                  const SizedBox(
                    height: 16,
                  ),
                  trafficUI(),
                  const SizedBox(
                    height: 16,
                  ),
                  buildOrder(),
                  const SizedBox(
                    height: 16,
                  ),
                  topSellingProduct(),
                  const SizedBox(
                    height: 16,
                  ),
                  shopAdvisor(),
                  const SizedBox(
                    height: 16,
                  ),
                  reviewUI(),
                  const SizedBox(
                    height: 24,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  revenueUI() {
    return Container(
      padding:
          const EdgeInsets.only(top: 8.5, left: 15, right: 9.5, bottom: 8.5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 10, offset: Offset(2, 2))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Revenue",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
                color: AppColor.appColor,
                fontFamily: AppFonts.poppinsMedium,
                decoration: TextDecoration.underline),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  getText('All Time', 14, kblackColor, FontWeight.w400,
                      poppinsRegular),
                  const SizedBox(
                    height: 16,
                  ),
                  getText('\$500.00', 24, kblackColor, FontWeight.w500,
                      robotoMedium),
                ],
              ),
              SizedBox(
                height: 58,
                width: 1,
                child: Container(
                  color: Colors.black54,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  getText('Today', 14, kblackColor, FontWeight.w400,
                      poppinsRegular),
                  const SizedBox(
                    height: 16,
                  ),
                  getText('\$500.00', 24, kblackColor, FontWeight.w500,
                      robotoMedium),
                ],
              ),
              SizedBox(
                height: 58,
                width: 1,
                child: Container(
                  color: Colors.black54,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  getText('Last Week', 14, kblackColor, FontWeight.w400,
                      poppinsRegular),
                  const SizedBox(
                    height: 16,
                  ),
                  getText('\$500.00', 24, kblackColor, FontWeight.w500,
                      robotoMedium),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  trafficUI() {
    return Container(
      padding:
          const EdgeInsets.only(top: 7.5, left: 15, right: 13.5, bottom: 8.5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 10, offset: Offset(2, 2))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Traffic",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: ksolidredColor,
                fontFamily: poppinsMedium,
                decoration: TextDecoration.underline),
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  getText('Views', 14, kblackColor, FontWeight.w400,
                      poppinsRegular),
                  const SizedBox(
                    height: 16.7,
                  ),
                  getText(
                      '247', 24, kblackColor, FontWeight.w500, robotoMedium),
                  const SizedBox(
                    height: 15.3,
                  ),
                  getText('Up 10% vs last week', 14, kblackColor,
                      FontWeight.w400, poppinsRegular),
                ],
              ),
              SizedBox(
                height: 58,
                width: 1,
                child: Container(
                  color: Colors.black54,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  getText('Favourites', 14, kblackColor, FontWeight.w400,
                      poppinsRegular),
                  const SizedBox(
                    height: 16.7,
                  ),
                  getText('22', 24, kblackColor, FontWeight.w500, robotoMedium),
                  const SizedBox(
                    height: 15.3,
                  ),
                  getText('Up 10% vs last week', 14, kblackColor,
                      FontWeight.w400, poppinsRegular),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  reviewUI() {
    return Container(
      padding:
          const EdgeInsets.only(top: 32.44, left: 22, right: 22, bottom: 32.44),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 10, offset: Offset(2, 2))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              getText('My Shop Rating', 16, kblackColor, FontWeight.w600,
                  poppinsSemiBold),
              const Spacer(),
              RatingBar(
                initialRating: 3,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 22,
                ratingWidget: RatingWidget(
                  full: Image.asset(
                    'assets/images/colorating.png',
                    width: 20,
                    height: 17.78,
                  ),
                  half: Image.asset(
                    'assets/images/colorating.png',
                    width: 20,
                    height: 17.78,
                  ),
                  empty: Image.asset(
                    'assets/images/blankrating.png',
                    width: 20,
                    height: 17.78,
                  ),
                ),
                itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              )
            ],
          ),
          const SizedBox(
            height: 35.87,
          ),
          getText('Recent Reviews:', 16, kblackColor, FontWeight.w600,
              poppinsSemiBold),
          const SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(26)),
                child: Image.asset('assets/images/profileimg.png'),
              ),
              const SizedBox(
                width: 15,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    getText('Bhavana Bahl', 14, kblackColor, FontWeight.w600,
                        poppinsSemiBold),
                    const SizedBox(
                      height: 1,
                    ),
                    getText(
                        'Excellent service, had my snacks to me within the hour!',
                        14,
                        kblackColor,
                        FontWeight.w400,
                        poppinsRegular),
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      child: getText('3 Hours ago', 14, kblackColor,
                          FontWeight.w400, poppinsRegular),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 21,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Read All Reviews',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                  color: ksolidredColor,
                  fontWeight: FontWeight.w600,
                  fontFamily: poppinsSemiBold),
            ),
          )
        ],
      ),
    );
  }

  shopAdvisor() {
    return Container(
      padding: const EdgeInsets.only(top: 5.44, left: 10, right: 9, bottom: 24),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 10, offset: Offset(2, 2))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Shop Advisor',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ksolidredColor,
                fontFamily: poppinsSemiBold,
                decoration: TextDecoration.underline),
          ),
          const SizedBox(
            height: 8.56,
          ),
          Row(
            children: [
              createShopUI('Run an Ad', 'Add your shop to our explore page',(){

              }),
              const SizedBox(
                width: 16,
              ),
              createShopUI('Whatsapp', 'Share your store on Whatsapp',(){

              }),
            ],
          )
        ],
      ),
    );
  }

  createShopUI(String title, String sub,Function ()ontap) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
            border: Border.all(color: ksolidredColor),
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: ksolidredColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5))),
              child: getText(
                  title, 16, kWhiteColor, FontWeight.w500, poppinsMedium),
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 17),
              child: getText(sub, 14, const Color(0xff1C1C1C), FontWeight.w400,
                  poppinsRegular),
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              padding: const EdgeInsets.only(left: 16),
              child: InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseBanner()));
                },
                child: Row(
                  children: [
                    const Text(
                      'Learn More',
                      style: TextStyle(
                          fontSize: 14,
                          color: ksolidredColor,
                          fontWeight: FontWeight.w400,
                          fontFamily: poppinsRegular,
                          decoration: TextDecoration.underline),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Image.asset(
                      'assets/images/arrow_right.png',
                      width: 15.4,
                      height: 16,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  topSellingProduct() {
    return Container(
      padding: const EdgeInsets.only(top: 13.45, bottom: 11),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        // boxShadow: const [
        //   BoxShadow(
        //       color: Colors.black12, blurRadius: 10, offset: Offset(2, 2))
        // ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: const Text(
              'Top Selling Products',
              style: TextStyle(
                  fontSize: 16,
                  color: ksolidredColor,
                  fontWeight: FontWeight.w600,
                  fontFamily: poppinsSemiBold,
                  decoration: TextDecoration.underline),
            ),
          ),
          const SizedBox(
            height: 7.55,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              createSellingProductUI(
                  'assets/images/channa.png', 'Roasted Cha', '21'),
              createSellingProductUI('assets/images/sprit.png', 'Sprit', '0'),
              createSellingProductUI(
                  'assets/images/meggi.png', 'Maggi 2-Min', '14')
            ],
          )
        ],
      ),
    );
  }

  createSellingProductUI(String img, String title, String sub) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          getText(title, 14, kblackColor, FontWeight.w500, poppinsMedium),
          Text.rich(TextSpan(
              text: sub,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: robotoMedium,
                  color: kblackColor),
              children: const [
                TextSpan(
                    text: ' in stock',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: poppinsMedium,
                        color: kblackColor))
              ]))
        ],
      ),
    );
  }

  buildOrder() {
    return Container(
      padding: const EdgeInsets.only(top: 11, left: 15, right: 13, bottom: 11),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 10, offset: Offset(2, 2))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Orders",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: ksolidredColor,
                fontFamily: poppinsMedium,
                decoration: TextDecoration.underline),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                  child: Column(
                    children: [
                      getText('New', 14, kblackColor, FontWeight.w400,
                          poppinsRegular),
                      Row(
                        children: [
                          const Spacer(),
                          getText('12', 24, kblackColor, FontWeight.w500,
                              robotoMedium),
                          const Spacer(),
                          SizedBox(
                            height: 50,
                            width: 0.5,
                            child: Container(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Flexible(
                child: Container(
                  child: Column(
                    children: [
                      getText('Processing', 14, kblackColor, FontWeight.w400,
                          poppinsRegular),
                      Row(
                        children: [
                          const Spacer(),
                          getText('15', 24, kblackColor, FontWeight.w500,
                              robotoMedium),
                          const Spacer(),
                          SizedBox(
                            height: 50,
                            width: 0.5,
                            child: Container(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Flexible(
                child: Container(
                  child: Column(
                    children: [
                      getText('Complete', 14, kblackColor, FontWeight.w400,
                          poppinsRegular),
                      Row(
                        children: [
                          const Spacer(),
                          getText('1', 24, kblackColor, FontWeight.w500,
                              robotoMedium),
                          const Spacer(),
                          SizedBox(
                            height: 50,
                            width: 0.5,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
