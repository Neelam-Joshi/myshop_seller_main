import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class ProductReviews extends StatefulWidget {
  const ProductReviews({Key? key}) : super(key: key);

  @override
  State<ProductReviews> createState() => _ProductReviewsState();
}

class _ProductReviewsState extends State<ProductReviews> {

  TextEditingController productController = TextEditingController();
  bool isVisible = false;

  List reviewList = [
    {
      "image": "assets/images/productreview.png",
      "name":"Sprite",
      "review": "Shop owner was quick with my questions",
    },
    {
      "image": "assets/images/productreview2.png",
      "name":"Maggi",
      "review": "Their response time was slower than I",
    },
    {
      "image": "assets/images/meggi.png",
      "name":"Chana someting",
      "review": "Shop owner responded to my questions quickly",
    },
    {
      "image": "assets/images/coca-cola.png",
      "name":"Coca Cola",
      "review": "Shop owner was quick with my questions",
    },
    {
      "image": "assets/images/channa.png",
      "name":"Chana",
      "review": "Shop owner was quick with my questions",
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Reviews", true),
      body: Padding(
        padding: const EdgeInsets.only(left:16,right:16),
        child: Column(
          children: [
            Center(child: getText("Product Reviews", 16, kblackColor, FontWeight.w400, poppinsRegular),),
            const SizedBox(height:25.46),
            SearchUI("Search",productController,"assets/images/search.png"),
            const SizedBox(height:15),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: reviewList.length,
                separatorBuilder: (BuildContext context,i){
                  return const SizedBox(height:15);
                },
                itemBuilder: (BuildContext context,index){
                  var item = reviewList[index];
                  return InkWell(
                    onTap:(){

                    },
                    child: Container(
                      padding: const EdgeInsets.only(left:18,right:19,top:8,bottom:8),
                      height: 125,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Image.asset(item['image'],width:80,height: 80,),
                          const SizedBox(width: 15,),
                          Flexible(
                            child: Column(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: [
                                  getText(item['name'], 16, kblackColor, FontWeight.w600, poppinsRegular),
                                  const SizedBox(width: 27,),
                                  const Text("When I opened the sprite it was flat,and not good in test ",
                                    style:   TextStyle(
                                      fontFamily: poppinsRegular,
                                      color: kLightTextColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                     maxLines: 2,
                                  ),
                                  const SizedBox(height: 8,),
                                  Expanded(
                                    child:  RatingUI(),)
                                ]),
                          )],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget SearchUI( hinttext,TextEditingController _controller,iconimage) {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(left:12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
        boxShadow:const [
          BoxShadow(
            blurRadius:4,
            offset: Offset(0,0),
            color: Color(0xff7090B0)
          )
        ],
      ),
      child: TextField(

        controller: _controller,
        decoration: InputDecoration(
          contentPadding:EdgeInsets.all(5),
          border: InputBorder.none,
          hintText: hinttext,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            fontFamily: poppinsRegular,
            color: kLightTextColor
          ),
          prefixIcon: IconButton(
            onPressed: (){},
            icon: Image.asset(iconimage),
          )
        ),
      ),
    );
  }

  Widget RatingUI() {
    return RatingBar(
      initialRating: 3,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
     itemSize: 20,
     itemPadding: const EdgeInsets.symmetric(horizontal:4),
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
