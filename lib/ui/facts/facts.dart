import 'package:flutter/material.dart';
import '../calculator/calculator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Facts extends StatefulWidget {
  @override
  _FactsState createState() => _FactsState();
}

class _FactsState extends State<Facts> {
  int _selectedIndex = 0;
  late List<EnergyData> _chartData;
  late TooltipBehavior _tooltipBehaviour;

  @override
  void initState() {
    _tooltipBehaviour = TooltipBehavior();
    _chartData = getEnergyData();
    super.initState();
  }

  void _onItemTapped(int index) {
    _selectedIndex = index;
    _tooltipBehaviour = TooltipBehavior();

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
                    child: SfCircularChart(legend: Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap), tooltipBehavior: _tooltipBehaviour, series: <CircularSeries>[
                  PieSeries<EnergyData, String>(
                    dataSource: _chartData,
                    pointColorMapper: (EnergyData data, _) => data.color,
                    xValueMapper: (EnergyData data, _) => data.name,
                    yValueMapper: (EnergyData data, _) => data.number,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    enableTooltip: true,
                  ),
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
                style: TextStyle(color: Color.fromRGBO(239, 68, 68, 1)),
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
      EnergyData("Electricity", 30, Color.fromARGB(100, 239, 68, 68)),
      EnergyData("Solar", 70, Color.fromARGB(250, 239, 68, 68))
    ];

    return energyData;
  }
}

class EnergyData {
  EnergyData(this.name, this.number, this.color);
  final String name;
  final int number;
  final Color color;
}
