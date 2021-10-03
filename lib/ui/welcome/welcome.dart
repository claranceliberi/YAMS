import 'package:flutter/material.dart';
import '../facts/facts.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
                child: Center(
                    child: Container(
                        child: Column(children: <Widget>[
              Image.asset("assets/images/app-logo.png"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text("YAMS", textAlign: TextAlign.center, style: TextStyle(color: Color.fromRGBO(239, 68, 68, 1), fontSize: 32, fontWeight: FontWeight.w700)),
              ),
              Text("Yoau Are My Sunshine, App that gives you all information you need about solar and other non-renewable energy.", textAlign: TextAlign.center, style: TextStyle(fontSize: 16))
            ])))),
            Expanded(
                child: Container(
                    child: Row(children: [
              Expanded(
                  child: TextButton(
                      child: Text("Get Started"),
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Facts()));
                      },
                      style: TextButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 24.0), primary: Colors.white, textStyle: TextStyle(color: Colors.white, fontSize: 18), backgroundColor: Color.fromRGBO(239, 68, 68, 1))))
            ])))
          ]),
        ),
      ),
    );
  }
}
