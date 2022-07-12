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
        crossAxisCount: 1,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage('assets/images/snack/krupuk_bandung.jpg'),
                      height: 90,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text("Krupuk Bandung", style: TextStyle(fontSize: 17.0)),
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
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage('assets/images/snack/lauk_telur_dadar.jpg'),
                      height: 70,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text("Lauk Telur", style: TextStyle(fontSize: 17.0)),
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
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage('assets/images/snack/peyek_udang.jpg'),
                      height: 90,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text("Peyek Udang", style: TextStyle(fontSize: 17.0)),
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
