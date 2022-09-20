import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/dasboard/chat/mainchat.dart';
import 'package:myshop_seller/modules/dasboard/HomePage.dart';
import 'package:myshop_seller/modules/dasboard/products/products.dart';
import 'package:myshop_seller/modules/dasboard/stats/stats.dart';
import 'package:myshop_seller/modules/orders/OrdersScreen.dart';
import 'package:myshop_seller/modules/orders/order.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  var screensView = [
    const HomePage(),
    const Stats(),
    const OrdersScreen(),
    const ProductScreen(),
    // const Orders(),
    // const ProductsPage(),
    const MainChat()
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensView[selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 22, right: 24),
        height: 71,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            bottomUI('assets/images/home.png', 'Home',
                selectedIndex == 0 ? ksolidredColor : kLightTextColor, () {
              setState(() {
                selectedIndex = 0;
              });
            }),
            bottomUI('assets/images/stats.png', 'Stats',
                selectedIndex == 1 ? ksolidredColor : kLightTextColor, () {
              setState(() {
                selectedIndex = 1;
              });
            }),
            bottomUI('assets/images/order.png', 'Orders',
                selectedIndex == 2 ? ksolidredColor : kLightTextColor, () {
              setState(() {
                selectedIndex = 2;
              });
            }),
            bottomUI('assets/images/productab.png', 'Products',
                selectedIndex == 3 ? ksolidredColor : kLightTextColor, () {
              setState(() {
                selectedIndex = 3;
              });
            }),
            bottomUI('assets/images/chat.png', 'Chat',
                selectedIndex == 4 ? ksolidredColor : kLightTextColor, () {
              setState(() {
                selectedIndex = 4;
              });
            }),
          ],
        ),
      ),
    );
  }

  Widget bottomUI(String img, String title, Color color, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            img,
            height: 20,
            width: 20,
            color: color,
          ),
          const SizedBox(
            height: 7,
          ),
          getText(title, 11, color, FontWeight.w500, poppinsMedium)
        ],
      ),
    );
  }
}
