import 'package:flutter/material.dart';
import 'package:nav_ex/car/car1.dart';
import 'package:nav_ex/car/car2.dart';
import 'package:nav_ex/car/car3.dart';

class Car extends StatefulWidget {
  Car({Key key}) : super(key: key);

  _CarState createState() => _CarState();
}

class _CarState extends State<Car> {
  int _selectedIndex = 0;
  final List<Widget> _widgets = [Car1(), Car2(), Car3()];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_1),
            title: Text('Car 1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_2),
            title: Text('Car 2'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_3),
            title: Text('Car 3'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.amber[100],
      ),
    );
  }
}
