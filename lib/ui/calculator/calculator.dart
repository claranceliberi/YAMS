import 'package:flutter/material.dart';
import '../../widgets/input_field.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  bool keyboardVisibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Compare your data with NASA data",
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Average Temperature",
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  InputField(),
                ])),
            SizedBox(height: 20),
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Average Temperature",
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  InputField(),
                ])),
            SizedBox(height: 20),
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Average Temperature",
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  InputField(),
                ])),
            SizedBox(height: 20),
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Average Temperature",
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  InputField(),
                ])),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                height: 45,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Compare",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  color: Color.fromRGBO(239, 68, 68, 1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  elevation: 0,
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.business, size: 0),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.black),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.business, size: 0),
              title: Text(
                "Stats",
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
    );
  }
}
