import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../HomePage.dart';

class ColumnToUse extends StatefulWidget {
  final String name_of_column;
  const ColumnToUse({super.key, required this.name_of_column});

  @override
  State<ColumnToUse> createState() => _ColumnToUseState();
}

class _ColumnToUseState extends State<ColumnToUse> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.name_of_column),
        SizedBox(
          height: 26.0,
        ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey.shade200,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: DropdownButton<String>(
                value: selectedValue1,
                iconSize: 9.0,
                underline: Container(),
                icon: Icon(CupertinoIcons.chevron_down),
                items: breakFast1.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(fontSize: 14.0)),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue1 = newValue!;
                  });
                },
              ),
            )),
        SizedBox(
          height: 16.0,
        ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey.shade200,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: DropdownButton<String>(
                value: selectedValue2,
                iconSize: 9.0,
                underline: Container(),
                icon: Icon(CupertinoIcons.chevron_down),
                items: breakFast1.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(fontSize: 14.0)),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue2 = newValue!;
                  });
                },
              ),
            )),
      ],
    );
  }
}
