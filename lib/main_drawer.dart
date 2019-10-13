import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'All about transportation & food',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            leading: Icon(Icons.directions_car),
            title: Text('Transportation'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/transportation');
            },
          ),
          ListTile(
              leading: Icon(Icons.fastfood),
              title: Text('Food'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/food');
              }),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/login',
                  (route) => false,
                );
              }),
        ],
      ),
    );
  }
}
