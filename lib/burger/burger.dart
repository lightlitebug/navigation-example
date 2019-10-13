import 'package:flutter/material.dart';
import 'package:nav_ex/burger/burger1.dart';
import 'package:nav_ex/burger/burger2.dart';

class Burger extends StatefulWidget {
  Burger({Key key}) : super(key: key);

  _BurgerState createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  int _selectedIndex = 0;
  final List<Widget> _widgets = [Burger1(), Burger2()];

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
            title: Text('Burger 1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_2),
            title: Text('Burger 2'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.amber[100],
      ),
    );
  }
}
