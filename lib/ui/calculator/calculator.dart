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
      backgroundColor: Theme.of(context).primaryColor,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      // padding: const EdgeInsets.all(30),
                      padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Column(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Text(
                              "Calculate",
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Temparature avarage", style: TextStyle(fontSize: 14)),
                        InputField(),
                        SizedBox(height: 20),
                        Text("Start date", style: TextStyle(fontSize: 14)),
                        InputField(),
                        SizedBox(height: 20),
                        Text("End date", style: TextStyle(fontSize: 14)),
                        InputField(),
                        SizedBox(height: 20),
                        Text("Parameters", style: TextStyle(fontSize: 14)),
                        InputField(),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          height: 45,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, "/explore");
                            },
                            child: Text(
                              "Compare",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            color: Theme.of(context).primaryColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            elevation: 0,
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}