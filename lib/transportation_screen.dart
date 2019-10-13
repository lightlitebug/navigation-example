import 'package:flutter/material.dart';
import 'package:nav_ex/bike/bike.dart';
import 'package:nav_ex/car/car.dart';
import 'package:nav_ex/main_drawer.dart';
import 'package:nav_ex/train/train.dart';

class TransportationScreen extends StatefulWidget {
  TransportationScreen({Key key}) : super(key: key);

  @override
  _TransportationScreenState createState() => _TransportationScreenState();
}

class _TransportationScreenState extends State<TransportationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Navigation Demo'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.directions_car),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
                text: 'Train',
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
                text: 'Bike',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Car(),
            Train(),
            Bike(),
          ],
        ),
        drawer: MainDrawer(),
      ),
    );
  }
}
