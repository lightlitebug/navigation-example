import 'package:flutter/material.dart';
import 'package:nav_ex/bike/bike1.dart';
import 'package:nav_ex/bike/bike2.dart';
import 'package:nav_ex/bike/bike3.dart';
import 'package:nav_ex/bike/bike4.dart';

class Bike extends StatefulWidget {
  Bike({Key key}) : super(key: key);

  _BikeState createState() => _BikeState();
}

class _BikeState extends State<Bike> {
  int _selectedIndex = 0;
  final List<Widget> _widgets = [Bike1(), Bike2(), Bike3(), Bike4()];

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
            title: Text('Bike 1'),
            backgroundColor: Colors.amber[100],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_2),
            title: Text('Bike 2'),
            backgroundColor: Colors.amber[200],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_3),
            title: Text('Bike 3'),
            backgroundColor: Colors.amber[300],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_4),
            title: Text('Bike 4'),
            backgroundColor: Colors.amber[400],
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }
}
