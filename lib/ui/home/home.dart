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
            Text(
              "Welcome to YAMS",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ),
    );
  }
}
