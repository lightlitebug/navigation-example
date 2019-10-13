import 'package:flutter/material.dart';
import 'package:nav_ex/train/train1.dart';
import 'package:nav_ex/train/train2.dart';
import 'package:nav_ex/train/train3.dart';

class Train extends StatefulWidget {
  Train({Key key}) : super(key: key);

  _TrainState createState() => _TrainState();
}

class _TrainState extends State<Train> {
  int _selectedIndex = 0;
  final List<Widget> _widgets = [Train1(), Train2(), Train3()];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.filter_1),
          title: Text('Train 1'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.filter_2),
          title: Text('Train 2'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.filter_3),
          title: Text('Train 3'),
        ),
      ], currentIndex: _selectedIndex, onTap: _onItemTapped),
    );
  }
}
