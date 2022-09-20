import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop_seller/constant/AppFonts.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/notification/notificationscreen.dart';
import 'package:myshop_seller/modules/settings/about.dart';
import 'package:myshop_seller/modules/settings/changedesign.dart';
import 'package:myshop_seller/modules/settings/choosedesign.dart';
import 'package:myshop_seller/modules/settings/marketing/marketingchoosebanner.dart';
import 'package:myshop_seller/modules/settings/privacypolicy.dart';
import 'package:myshop_seller/modules/settings/profilesetting.dart';
import 'package:myshop_seller/modules/settings/reviews/productreviews.dart';
import 'package:myshop_seller/modules/settings/reviews/storeReviews.dart';
import 'package:myshop_seller/modules/settings/shopsetting.dart';
import 'package:myshop_seller/modules/settings/support.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class LongShopName extends StatefulWidget {
  const LongShopName({Key? key}) : super(key: key);

  @override
  State<LongShopName> createState() => _LongShopNameState();
}

class _LongShopNameState extends State<LongShopName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ksolidredColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            "assets/images/arrowback.png",
            width: 20,
            height: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: getText("Long Shop Name", 24, Colors.white, FontWeight.w600,
            AppFonts.poppinsBold), //semibold
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, bottom: 54, top: 30),
          child: Card(
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 30, top: 30),
              child: Column(children: [
                buildSingleRowWidget("assets/images/profile.png",
                    "Profile Settings", "assets/images/forwardarrow.png", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ProfileSettings()));
                }),
                const SizedBox(height: 25),
                buildSingleRowWidget("assets/images/settings.png",
                    "Shop Settings", "assets/images/forwardarrow.png", () {
                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>ShopSettings()));
                }),
                const SizedBox(height: 25),
                buildSingleRowWidget("assets/images/changedesign.png",
                    "Change Design", "assets/images/forwardarrow.png", () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const ChangeDesign()));
                    }),
                const SizedBox(height: 25),
                buildSingleRowWidget("assets/images/marketing.png", "Marketing",
                    "assets/images/forwardarrow.png", () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const MarketingChooseBanner()));
                    }),
                const SizedBox(height: 25),
                buildSingleRowWidget("assets/images/reviews.png",
                    "Store Reviews", "assets/images/forwardarrow.png", () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const StoreReviews()));
                    }),
                const SizedBox(height: 25),
                buildSingleRowWidget("assets/images/product.png",
                    "Product Reviews", "assets/images/forwardarrow.png", () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const ProductReviews()));
                    }),
                const SizedBox(height: 25),
                buildSingleRowWidget("assets/images/bell.png", "Notifications",
                    "assets/images/forwardarrow.png", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationScreen()));
                }),
                const SizedBox(height: 25),
                buildSingleRowWidget("assets/images/privacy.png",
                    "Privacy Policy", "assets/images/forwardarrow.png", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PrivacyPolicy()));
                }),
                const SizedBox(height: 25),
                buildSingleRowWidget("assets/images/about.png", "About",
                    "assets/images/forwardarrow.png", () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const About()));
                }),
                const SizedBox(height: 25),
                buildSingleRowWidget("assets/images/getsupport.png",
                    "Get Support", "assets/images/forwardarrow.png", () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SupportScreen()));
                    }),
                const SizedBox(height: 25),
                buildSingleRowWidget("assets/images/logout.png", "Log Out",
                    "assets/images/forwardarrow.png", () {}),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSingleRowWidget(iconImage, title, arrowtapImage, pressed) {
    return InkWell(
      onTap: pressed,
      child: Row(
        children: [
          Image.asset(
            iconImage,
            width: 17,
            height: 17,
          ),
          const SizedBox(width: 17),
          getText(title, 16, kblackColor, FontWeight.w400, poppinsRegular),
          const Spacer(),
          Image.asset(
            arrowtapImage,
            width: 17,
            height: 17,
          ),
        ],
      ),
    );
  }
}
