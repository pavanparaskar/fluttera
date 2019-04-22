import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String _selectedGender = null;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'hello',
      home: Scaffold(
          appBar: AppBar(
            title: Text("Drop down"),

          ),
          body: new Center(
            child: DropdownButton(
                value: _selectedGender,
                items: _dropDownItem(),
                hint: Text("Enter value"),
                onChanged: (value) {
                  _selectedGender = value;
                  setState(() {

                  });
                }),
          )


      ),


    );
  }

}

List<DropdownMenuItem<String>> _dropDownItem() {
  List<String> ddl = ["Male", "Female", "Others"];
  return ddl.map(
          (value) =>
          DropdownMenuItem(
            value: value,
            child: Text(value),
          )
  ).toList();
}