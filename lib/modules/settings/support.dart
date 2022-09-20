import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';


class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  bool isCallClicked = false;
  bool isEmailClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor: background,
        appBar: AppBar(
         // backgroundColor: background,
          elevation: 0,
          leading: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              "assets/images/arrowback.png",
              width: 9.15,
              height: 17,
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              getText(
                  'Support', 24, kblackColor, FontWeight.w600, poppinsSemiBold),
              const SizedBox(
                height: 2,
              ),
              isCallClicked
                  ? getText(
                      "Call Now", 16, kblackColor, FontWeight.w400, poppinsSemiBold)
                  : isEmailClicked
                      ? getText("Email Now", 16, kblackColor, FontWeight.w400,
                  poppinsRegular)
                      : Container()
            ],
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(height: 30),
                _buildCard("assets/images/cuate.png", "Call Now",
                    "Start a Conversation", () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          _conversationWidget("+1 (000) 000-0000", "Call Now"));
                  isCallClicked = true;
                  setState(() {
                    isEmailClicked = false;
                  });
                }),
                SizedBox(height: 16),
                _buildCard("assets/images/cuate.png", "Chat",
                    "Start a Conversation", () {}),
                SizedBox(height: 16),
                // _buildCard("assets/images/faq.png",
                //     "Frequently Asked Questions", "Find the answer now", () {}),
                // SizedBox(height: 16),
                _buildCard(
                    "assets/images/cuate.png", "Email", "Write a messege", () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          _conversationWidget("Email@Myshop.com", "Email Now"));
                  isEmailClicked = true;
                  setState(() {
                    isCallClicked = false;
                  });
                }),
              ],
            ),
          ),
        ));
  }

  Widget _buildCard(image, title, des, ontap) {
    return InkWell(
      onTap: ontap,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: const Color(0xFFFfFfFF),
          // shadowColor: Color(0xFF000000),
          // elevation:6,
          child: Container(
            width: 343,
            height: 126,
            child: Row(
              children: [
                Container(
                  width: 115,
                  height: 114.25,
                  child: Image.asset(
                    image,
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      getText(title.toString(), 14, kblackColor,
                          FontWeight.w600, poppinsSemiBold),
                      const SizedBox(height: 20),
                      getText(des, 14, kblackColor, FontWeight.w400, poppinsRegular)
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget _conversationWidget(title, btnText) {
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        alignment: Alignment.center,
        child: Container(
            width: 328,
            height: 120,
            child: Column(
              children: [
                const SizedBox(height: 16),
                Center(
                    child: getText(
                        title, 16, kblackColor, FontWeight.w600, poppinsRegular)),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Flexible(
                          child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 31,
                            decoration: BoxDecoration(
                                color: ksolidredColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: getText(btnText, 16, Colors.white,
                                FontWeight.w600, poppinsRegular),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      InkWell(
                        onTap: () {
                          isEmailClicked = false;
                          isCallClicked = false;
                        },
                        child: Flexible(
                          child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 31,
                            decoration: BoxDecoration(
                                color: const Color(0xffDDDDDD),
                                borderRadius: BorderRadius.circular(5)),
                            child: getText("Cancel", 16, kblackColor,
                                FontWeight.w600, poppinsRegular),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}
