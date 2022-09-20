import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modal/chatdetails.dart';
import 'package:myshop_seller/modules/dasboard/chat/receivermessage.dart';
import 'package:myshop_seller/modules/dasboard/chat/sendmessage.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class ChatDetails extends StatefulWidget {
  String name;
  ChatDetails(this.name);

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: background,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        // backgroundColor: background,
        toolbarHeight: 60,
        flexibleSpace: SafeArea(
          child: Row(
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Image(
                      width: 9.15,
                      height: 17,
                      image: AssetImage('assets/images/arrowback.png'))),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  getText('Chat', 24, kblackColor, FontWeight.w600,
                      poppinsSemiBold),
                  getText(widget.name, 16, kblackColor, FontWeight.w400,
                      poppinsRegular),
                ],
              ),
              const SizedBox(
                width: 33,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return messages[index].messageType == "receiver"
                    ? receiverMessage(context, messages[index].messageContent)
                    : sendMessage(
                        context, messages[index].messageContent); // Container(
              },
            ),
          ),
          typeMessage()
        ],
      ),
    );
  }

  typeMessage() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 18),
        child: Container(
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: kIconColor),
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              cursorColor: kblackColor,
              style: const TextStyle(
                  fontSize: 14,
                  color: kblackColor,
                  fontWeight: FontWeight.w400,
                  fontFamily: poppinsRegular),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Message',
                  contentPadding: const EdgeInsets.only(left: 16),
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      color: kLightTextColor,
                      fontWeight: FontWeight.w400,
                      fontFamily: poppinsRegular),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(
                      top: 4.47,
                      bottom: 6.47,
                    ),
                    child: Image.asset(
                      'assets/images/send.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  border: InputBorder.none),
            )),
      ),
    );
  }

  createHeading() {
    return Container(
      padding: const EdgeInsets.only(top: 9.74, left: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset(
              'assets/images/arrowback.png',
              width: 9.15,
              height: 17,
            ),
          ),
          Spacer(),
          Expanded(
            child: Column(
              children: [
                getText(
                    'Chat', 24, kblackColor, FontWeight.w600, poppinsSemiBold),
                getText(widget.name, 16, kblackColor, FontWeight.w400,
                    poppinsRegular),
              ],
            ),
          ),
          const SizedBox(
            width: 33,
          ),
          const Spacer()
        ],
      ),
    );
  }
}
