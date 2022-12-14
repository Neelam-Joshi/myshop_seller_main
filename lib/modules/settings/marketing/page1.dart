import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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

        child: Image.asset("assets/images/statusone.png",width: 1158,height:1983.84),
      ),
    );
  }
}
