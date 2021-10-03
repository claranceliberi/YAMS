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
   >if (?
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
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
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
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        InputField(),
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
                              "Calculator",
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
