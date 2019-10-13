import 'package:flutter/material.dart';
import 'package:nav_ex/food_screen.dart';
import 'package:nav_ex/login_screen.dart';

import 'package:nav_ex/transportation_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.teal,
      ),
      home: LoginScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/transportation': (context) => TransportationScreen(),
        '/food': (context) => FoodScreen(),
      },
    );
  }
}
