import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/dasboard/chat/chatdetail.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class MainChat extends StatefulWidget {
  const MainChat({Key? key}) : super(key: key);

  @override
  State<MainChat> createState() => _MainChatState();
}

class _MainChatState extends State<MainChat> {
  List chatList = [
    {
      'img': 'assets/images/chat1.png',
      'title': 'Abdoul Shop',
      'des':
          'Hello, I was wondering if you still sell the cookies with the chocolate',
    },
    {
      'img': 'assets/images/chat2.png',
      'title': 'Karim Shop',
      'des': 'Great! Thank you!',
    },
    {
      'img': 'assets/images/chat3.png',
      'title': 'Nino Shop',
      'des': 'That would be perfect',
    },
    {
      'img': 'assets/images/chat1.png',
      'title': 'Abdoul Shop',
      'des':
          'The refund just came thought. Thank you so much for all your help with',
    },
    {
      'img': 'assets/images/chat2.png',
      'title': 'Karim Shop',
      'des':
          'Hi do you sell the plates from the brand with the flower as a logo',
    },
    {
      'img': 'assets/images/chat3.png',
      'title': 'Nino Shop',
      'des': 'Thank you for your buisness',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: background,
        leading: GestureDetector(
          onTap: () {
            null;
          },
        ),
        title:
            getText('Chat', 24, kblackColor, FontWeight.w600, poppinsSemiBold),
        centerTitle: true,
      ),
      // backgroundColor: background,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            createSearchBar(),
            const SizedBox(
              height: 16,
            ),
            Expanded(child: createChat()),
          ],
        ),
      ),
    );
  }

  createChat() {
    return ListView.separated(
        separatorBuilder: (context, i) {
          return const SizedBox(
            height: 8,
          );
        },
        itemCount: chatList.length,
        padding: const EdgeInsets.only(left: 16, right: 16),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ChatDetails(chatList[index]['title'])));
            },
            child: SizedBox(
              height: 105,
              child: Stack(
                children: [
                  customChatUI(chatList[index]['img'], chatList[index]['title'],
                      chatList[index]['des']),
                  index == 1
                      ? Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: ksolidredColor,
                                border: Border.all(color: ksolidredColor),
                                borderRadius: BorderRadius.circular(100)),
                            alignment: Alignment.center,
                            child: getText('2', 14, kWhiteColor,
                                FontWeight.w600, poppinsSemiBold),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          );
        });
  }

  customChatUI(String img, String title, String des) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 100,
        padding:
            const EdgeInsets.only(top: 13, left: 12, right: 16, bottom: 12),
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffE0E0E0),
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 65,
                width: 65,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: background),
                    borderRadius: BorderRadius.circular(100)),
                child: ClipOval(
                  child: Image.asset(
                    img,
                    fit: BoxFit.fill,
                  ),
                )),
            const SizedBox(
              width: 13,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getText(
                      title, 16, kblackColor, FontWeight.w500, poppinsMedium),
                  Text(
                    des,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 14,
                        color: kLightTextColor,
                        fontWeight: FontWeight.w400,
                        fontFamily: poppinsRegular),
                  ),
                ],
              ),
            ),
            getText('Yesterday', 14, ksolidredColor, FontWeight.w400,
                poppinsRegular)
          ],
        ),
      ),
    );
  }

  createSearchBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(color: kIconColor),
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
          )),
    );
  }
}
