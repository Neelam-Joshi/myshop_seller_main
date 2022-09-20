import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';

import '../widgets/appBar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context, "Notifications", true),
        body: SizedBox.expand(
          child: ListView.separated(
            separatorBuilder: (BuildContext context, i) {
              return const SizedBox(height: 0);
            },
            itemCount: 8,
            itemBuilder: (BuildContext context, index) {
              return Container(
                width: 375,
                height: 80,
                padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child:
                            Image.asset("assets/images/notificationimage.png"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Customer Name\n",
                          style: TextStyle(
                              fontFamily: poppinsMedium,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: kmainblackColor),
                        ),
                        TextSpan(
                          text: "sent you a message.",
                          style: TextStyle(
                              fontFamily: poppinsMedium,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: kmainblackColor),
                        ),
                        TextSpan(
                          text: "3 Hours Ago",
                          style: TextStyle(
                              fontFamily: poppinsMedium,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xff8A8A8A)),
                        )
                      ]))
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
