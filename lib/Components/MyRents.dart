import 'package:flutter/material.dart';

class MyRents extends StatelessWidget {
  const MyRents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: MediaQuery.of(context).size.width * 0.88,
      padding: EdgeInsets.all(16.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10.0), boxShadow: [
        BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 0.0,
            blurStyle: BlurStyle.outer)
      ]),
      child: Row(
        children: [
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: Color(0xffE7FCFF),
            ),
            child: Center(
              child: Image.asset(
                "assets/rent.png",
                height: 46.0,
                width: 46.0,
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Members Paid : 20 (32)"),
              Text("Members Unpaid :  12"),
            ],
          ),
          Expanded(
            child: Container(
                alignment: Alignment.topRight,
                child: Image.asset("assets/decore.png")),
          )
        ],
      ),
    );
  }
}
