import 'package:flutter/material.dart';
import 'package:nav_ex/pizza/pizza1.dart';
import 'package:nav_ex/pizza/pizza2.dart';
import 'package:nav_ex/pizza/pizza3.dart';

class Pizza extends StatefulWidget {
  Pizza({Key key}) : super(key: key);

  _PizzaState createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> {
  int _selectedIndex = 0;
  final List<Widget> _widgets = [Pizza1(), Pizza2(), Pizza3()];

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
            title: Text('Pizza 1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_2),
            title: Text('Pizza 2'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_3),
            title: Text('Pizza 3'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.amber[100],
      ),
    );
  }
}
