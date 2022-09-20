import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/PageConstant.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/dasboard/DashboardPage.dart';
import 'package:myshop_seller/modules/splash/SplashPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyShop_seller',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            //  color:kappBarColor,
            backgroundColor: kappBarColor,
            centerTitle: true,
            elevation: 0,
          )),
      initialRoute: PageConstant.splash,
      routes: {
        '/': (context) => const SplashPage(),
      },
    );
  }
}
