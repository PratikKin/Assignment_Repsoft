import 'package:dropdown_model_list/dropdown_model_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_assignment/Component_Container.dart';
import 'package:login_assignment/Components/MyPG.dart';
import 'package:login_assignment/Components/MyRents.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

String selectedValue1 = "Dosa";
String selectedValue2 = "Dosa";
String selectedValue3 = "Dosa";
String selectedValue4 = "Dosa";
String selectedValue5 = "Dosa";
String selectedValue6 = "Dosa";

List<String> breakFast1 = ["Dosa", "Idli", "Poha", "Paratha"];
List<String> breakFast2 = ["Dosa", "Idli", "Poha", "Paratha"];

class _HomePageState extends State<HomePage> {
  DropListModel dropListModel = DropListModel([
    OptionItem(id: "1", title: "Select PG"),
    OptionItem(id: "2", title: "PG 1"),
    OptionItem(id: "3", title: "PG 2"),
    OptionItem(id: "4", title: "PG 3"),
    OptionItem(id: "5", title: "PG 4"),
    OptionItem(id: "6", title: "PG 5"),
    OptionItem(id: "7", title: "PG 6"),
  ]);
  OptionItem optionItemSelected = OptionItem(title: "Select PG");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectDropList(
                  width: 190.0,
                  borderRadius: BorderRadius.circular(30.0),
                  itemSelected: optionItemSelected,
                  dropListModel: dropListModel,
                  showIcon: false,
                  showArrowIcon: true,
                  showBorder: true,
                  paddingTop: 0,
                  paddingDropItem: const EdgeInsets.only(
                      left: 20, top: 10, bottom: 10, right: 20),
                  suffixIcon: CupertinoIcons.chevron_down_circle_fill,
                  arrowColor: Colors.black,
                  arrowIconSize: 30.0,
                  dropbBoxborderRadius: BorderRadius.circular(30.0),
                  containerPadding: const EdgeInsets.all(10),
                  onOptionSelected: (optionItem) {
                    optionItemSelected = optionItem;
                    setState(() {});
                  },
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.outer,
                      blurRadius: 20.0,
                      color: Colors.black,
                      spreadRadius: 0.0,
                    )
                  ]),
              Container_Component(),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "My PG",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  color: Color(0xff1F7F8B),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              MyPG(),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "My Rents",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  color: Color(0xff1F7F8B),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              MyRents(),
            ],
          ),
        ),
      ),
    );
  }
}
