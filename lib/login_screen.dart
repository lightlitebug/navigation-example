import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: RaisedButton.icon(
          icon: Icon(Icons.vpn_key),
          label: Text(
            'Login',
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              '/transportation',
            );
          },
        ),
      ),
    );
  }
}
