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
        height: 471,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 16,
              offset: Offset(0,4),
              color: Color(0xff7090B0)
            ),
          ],
          borderRadius: BorderRadius.circular(20)
        ),

        child: Center(
            child: Text("page one")),
      ),
    );
  }
}
