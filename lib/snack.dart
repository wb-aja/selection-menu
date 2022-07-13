import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Snack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Rumah Makan Lamak Bana'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  children: [
                    Text("Krupuk Bandung", style: TextStyle(fontSize: 17.0)),
                    SizedBox(height: 8),
                    Ink.image(
                      image: AssetImage('assets/images/snack/krupuk_bandung.jpg'),
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  children: [
                    Text("Telur Padang", style: TextStyle(fontSize: 17.0)),
                    SizedBox(height: 8),
                    Ink.image(
                      image: AssetImage('assets/images/snack/lauk_telur_dadar.jpg'),
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  children: [
                    Text("Peyek Udang", style: TextStyle(fontSize: 17.0)),
                    SizedBox(height: 8),
                    Ink.image(
                      image: AssetImage('assets/images/snack/peyek_udang.jpg'),
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
