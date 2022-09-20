import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:myshop_seller/constant/AppFonts.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class StoreReviews extends StatefulWidget {
  const StoreReviews({Key? key}) : super(key: key);

  @override
  State<StoreReviews> createState() => _StoreReviewsState();
}

class _StoreReviewsState extends State<StoreReviews> {

  bool isVisible = false;

  List reviewList = [
    {
      "image": "assets/images/reviewperson1.png",
       "name":"Sai Pawar",
       "review": "Shop owner was quick with my questions",
    },
    {
      "image": "assets/images/reviewperson2.png",
       "name":"Prisha Singh",
       "review": "Their response time was slower than I",
    },
    {
      "image": "assets/images/reviewperson3.png",
       "name":"Kiara Patil",
       "review": "Shop owner responded to my questions quickly",
    },
    {
      "image": "assets/images/reviewperson4.png",
       "name":"Sai Pawar",
       "review": "Shop owner was quick with my questions",
    },

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Reviews", true),
      body: Column(
        children: [
          Center(
              child: getText("Store Reviews",
                  16, kblackColor, FontWeight.w400, poppinsRegular)
          ),
          const SizedBox( height: 25.49,),
          Expanded(
            child: ListView.separated(
                itemCount: reviewList.length,
                separatorBuilder: (BuildContext context,i){
                  return const SizedBox(height:15);
                },
                itemBuilder: (BuildContext context,index){
                  var item = reviewList[index];
                  return Container(
                    padding: const EdgeInsets.only(left:18,right:19,top:8,bottom:8),
                    height: 125,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(item['image'],width:80,height: 80,),
                            const SizedBox(height:5),
                            getText("1 Week ago", 14, kLightTextColor, FontWeight.w400, poppinsRegular)  //normal
                          ],
                        ),
                        const SizedBox(width: 27,),
                        Flexible(
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                               getText(item['name'], 16, kblackColor, FontWeight.w600, poppinsRegular),
                               const SizedBox(width: 27,),
                               Text.rich(
                                     TextSpan(
                                   children: [
                                     isVisible==false?  TextSpan(
                                       text: item['review'] ,
                                       style: const  TextStyle(
                                           fontFamily: poppinsRegular,
                                           color: kblackColor,
                                           fontSize: 14,
                                           fontWeight: FontWeight.w500,
                                           overflow: TextOverflow.ellipsis,
                                       ),

                                     ):const TextSpan(),
                                     isVisible==false? const TextSpan(
                                       text: "....",
                                       style:  TextStyle(
                                           fontFamily: poppinsRegular,
                                           color: kblackColor,
                                           fontSize: 14,
                                           fontWeight: FontWeight.w500,
                                           overflow: TextOverflow.ellipsis
                                       ),
                                     ): const TextSpan(),
                                     isVisible==false? TextSpan(
                                       text: "Read More",
                                       style: const TextStyle(
                                           fontFamily: poppinsRegular,
                                           color: ksolidredColor,
                                           fontSize: 14,
                                           fontWeight: FontWeight.w500,
                                           overflow: TextOverflow.ellipsis
                                       ),
                                    recognizer:TapGestureRecognizer()
                                      ..onTap = () {
                                        isVisible =true;
                                        setState(() {

                                        });
                                      }
                                     ):const TextSpan(),
                                     isVisible?const TextSpan(
                                       text: "Shop owner was quick with my questions, Shop owner was quick with my questions,Shop owner was quick with my questions  ",
                                       style:  TextStyle(
                                           fontFamily: poppinsRegular,
                                           color: kblackColor,
                                           fontSize: 14,
                                           fontWeight: FontWeight.w500,
                                           overflow: TextOverflow.ellipsis
                                       ),
                                     ):const TextSpan(),
                                   ])
                               ),
                               const SizedBox(height: 8,),
                               Flexible(child: RatingUI())
                            ]),
                        )],
                    ),
                  );
                },
            ),
          )
        ]),
    );
  }

  Widget RatingUI() {
    return RatingBar(
      initialRating: 4,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
        itemSize: 20,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4),
      ratingWidget: RatingWidget(
        full: Image.asset('assets/images/coloredStar.png',width: 20,height: 17.78,),
        half: Image.asset('assets/images/coloredStar.png',width: 20,height: 17.78,),
        empty: Image.asset('assets/images/nonColoredStart.png',width: 20,height: 17.78,),
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
