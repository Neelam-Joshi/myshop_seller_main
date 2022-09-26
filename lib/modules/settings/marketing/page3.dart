import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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

        child: Image.asset("assets/images/statusthree.png",width: 1158,height:1983.84),
      ),
    );
  }
}
