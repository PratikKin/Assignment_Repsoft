import 'package:flutter/material.dart';

import 'Components/Column1.dart';

class Container_Component extends StatefulWidget {
  const Container_Component({super.key});

  @override
  State<Container_Component> createState() => _Container_ComponentState();
}

class _Container_ComponentState extends State<Container_Component> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 0.0,
              blurStyle: BlurStyle.outer)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColumnToUse(
                name_of_column: "Breakfast",
              ),
              SizedBox(width: 16.0),
              ColumnToUse(
                name_of_column: "Lunch",
              ),
              SizedBox(width: 16.0),
              ColumnToUse(
                name_of_column: "Dinner",
              ),
            ],
          ),
          SizedBox(height: 28.0),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 52.0,
              width: 116.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xff1F7F8B)),
              child: GestureDetector(
                onTap: () {
                  // Handle button press
                },
                child: Center(child: Text('Update')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
