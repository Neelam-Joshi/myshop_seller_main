import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/settings/marketing/page1.dart';
import 'package:myshop_seller/modules/settings/marketing/page2.dart';
import 'package:myshop_seller/modules/settings/marketing/page3.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class WhatsappStatus extends StatefulWidget {
  const WhatsappStatus({Key? key}) : super(key: key);

  @override
  State<WhatsappStatus> createState() => _WhatsappStatusState();
}

class _WhatsappStatusState extends State<WhatsappStatus> {

  final PageController _pageViewController = PageController(initialPage: 0); // set the initial page you want to show
  int _activePage = 0;
  final List<Widget> _Pages = [
    Page1(),
    Page2(),
    Page3()
  ];


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageViewController.dispose();  // dispose the PageController
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Whastapp Status", true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: getText("Share on Whatsapp",
                16, kblackColor, FontWeight.w400, poppinsRegular),
          ),
          SizedBox(height: 25,),
          Expanded(
            child: Stack(
              children: [
                PageView.builder(
                    physics: ScrollPhysics(),
                    controller: _pageViewController,
                    onPageChanged: (int index){
                      setState(() {
                        _activePage = index;
                      });
                    },padEnds: true,
                    itemBuilder: (BuildContext context, int index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 50,right:50),
                          child: _Pages[index]);
                    }
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    height: 40,
                    child:Container(
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(
                      _Pages.length,
                      (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: InkWell(
                      onTap: () {
                      _pageViewController.animateToPage(index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                      },
                      child: CircleAvatar(
                      radius: 5,
                      // check if a dot is connected to the current page
                      // if true, give it a different color
                      backgroundColor: _activePage == index
                      ? ksolidredColor
                          : Color(0xffC0C0C0),
                                    ))
                      )))))
                   ]),
          ),
          SizedBox(height: 20.24,),
          Padding(
            padding: const EdgeInsets.only(left:16,right:16),
            child: Container(
              margin: const EdgeInsets.only(bottom: 39),
              height: 45,
              alignment: Alignment.bottomCenter,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: ButtonClass(ksolidredColor, 45,
                  343, "Share",(){
                  }, Colors.white, false),
            ),
          ),
        ],
      ),
      // floatingActionButton:
      // Padding(
      //   padding: const EdgeInsets.only(left:16,right:16),
      //   child: Container(
      //     margin: const EdgeInsets.only(bottom: 39),
      //     height: 45,
      //     alignment: Alignment.bottomCenter,
      //     decoration:BoxDecoration(
      //       borderRadius: BorderRadius.circular(5),
      //     ),
      //     child: ButtonClass(ksolidredColor, 45,
      //         343, "Share",(){
      //         }, Colors.white, false),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
