eimport 'package:flutter/material.dart';
import '../calculator/calculator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Facts extends StatefulWidget {
  @override
  _FactsState createState() => _FactsState();
}

class _FactsState extends State<Facts> {
  int _selectedIndex = 0;
  late List<EnergyData> _chartData;

  @override
  void initState() {
    _chartData = getEnergyData();
    super.initState();
  }

  void _onItemTapped(int index) {
    _selectedIndex = index;
    if (_selectedIndex == 1) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Calculator()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Text(
              "Home",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Container(
                child: Column(
              children: [
                Row(children: [
                  Text("Energy Usage", textAlign: TextAlign.left, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                ]),
                Row(children: [
                  Text("Last 5 years", textAlign: TextAlign.left, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey)),
                ]),
                Container(
                    child: SfCircularChart(series: <CircularSeries>[
                  PieSeries<EnergyData, string>(dataSource: _chartData, xValueMapper: (EnergyData data, _) => data.name, yValueMapper: (EnergyData data, _) => data.number, dataLabelMapper: DataLa),
                ]))
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

  List<EnergyData> getEnergyData() {
    final List<EnergyData> energyData = [
      EnergyData("Electricity", 20),
      EnergyData("Solar", 80)
    ];

    return energyData;
  }
}

class EnergyData {
  EnergyData(this.name, this.number);
  final String name;
  final int number;
}
