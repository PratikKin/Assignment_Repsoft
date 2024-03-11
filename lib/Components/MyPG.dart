import 'package:flutter/material.dart';

class MyPG extends StatelessWidget {
  const MyPG({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: MediaQuery.of(context).size.width * 0.88,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 0.0,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
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
              child: Image.asset("assets/home.png"),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("All Rooms : 20"),
              Text("All Floors :  04"),
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
