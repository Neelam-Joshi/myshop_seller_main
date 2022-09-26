import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(bottom: 35),
        height: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  offset: Offset(2,2),
                  color: Colors.black12
              )
            ],
            borderRadius: BorderRadius.circular(20)
        ),

        child: Image.asset("assets/images/statustwo.png",width: 1158,height:1983.84),
      ),
    );
  }
}
