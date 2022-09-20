import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  List aboutList = [
    {
      'img': 'assets/images/about1.png',
      'title': 'Installs',
      'price': '2,000',
    },
    {
      'img': 'assets/images/about2.png',
      'title': 'Shops',
      'price': '1,000',
    },
    {
      'img': 'assets/images/about3.png',
      'title': 'Customers',
      'price': '1,000',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9F9F9),
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 15,
              height: 22,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/arrowback.png',
                width: 9.15,
                height: 17,
              ),
            )),
        centerTitle: true,
        title: getText(
            "MyShop", 24, kblackColor, FontWeight.w600, poppinsSemiBold),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 13, right: 14),
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            Align(
                alignment: Alignment.center,
                child: getText('About MyShop', 40, kblackColor, FontWeight.w500,
                    poppinsMedium)),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.74, right: 40.74),
              child: getText(
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                  16,
                  kblackColor,
                  FontWeight.w500,
                  poppinsMedium),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                  separatorBuilder: (context, i) {
                    return const SizedBox(
                      width: 24,
                    );
                  },
                  shrinkWrap: true,
                  itemCount: aboutList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      height: 200,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: kblackColor),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            aboutList[index]['img'],
                            width: 80,
                            height: 80,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          getText(aboutList[index]['title'], 14, kblackColor,
                              FontWeight.w600, poppinsSemiBold),
                          const SizedBox(
                            height: 8,
                          ),
                          getText(aboutList[index]['price'], 14, kblackColor,
                              FontWeight.w600, poppinsSemiBold)
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3, right: 2),
              child: customBtn(context, 'Careers', 45, double.infinity, () {}),
            )
          ],
        ),
      ),
    );
  }

  customBtn(BuildContext context, String title, double height, double width,
      Function() onTap) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            primary: ksolidredColor),
        onPressed: onTap,
        child: Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          child:
              getText(title, 16, kWhiteColor, FontWeight.w600, poppinsSemiBold),
        ));
  }
}
