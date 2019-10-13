import 'package:flutter/material.dart';

import 'package:nav_ex/burger/burger.dart';
import 'package:nav_ex/main_drawer.dart';

import 'package:nav_ex/pizza/pizza.dart';

class FoodScreen extends StatefulWidget {
  FoodScreen({Key key}) : super(key: key);

  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Navigation Demo'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.fastfood),
                text: 'Hamburger',
              ),
              Tab(
                icon: Icon(Icons.local_pizza),
                text: 'Pizza',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Burger(),
            Pizza(),
          ],
        ),
        drawer: MainDrawer(),
      ),
    );
  }
}
