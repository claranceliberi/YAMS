import 'package:flutter/material.dart';
import '../calculator/calculator.dart';

class Facts extends StatefulWidget {
  @override
  _FactsState createState() => _FactsState();
}

class _FactsState extends State<Facts> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    _selectedIndex = index;
    if (_selectedIndex == 1) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Calculator()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Text(
              "Home",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Container(
                child: Column(
              children: [
                Text("Energy Usage", textAlign: TextAlign.left),
                Text("Last 5 years", textAlign: TextAlign.left),
                Container(child: Text('chart'))
              ],
            ))
          ]),
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
