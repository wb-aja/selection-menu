import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Rumah Makan Lamak Bana'),
      ),
      body: new Center(
        child: new Text(
          'Selamat Datang',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
