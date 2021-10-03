import 'package:flutter/material.dart';

// import '../home/home_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                child: Column(children: <Widget>[
              Image.asset("assets/images/app-logo.png"),
              Text("YAMS"),
              Text("You are my sunshine, App that gives you all information you need about solar and other non-renewable energe")
            ]))
          ]),
        ),
      ),
    );
  }
}
