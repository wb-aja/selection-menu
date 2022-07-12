import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Minuman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Rumah Makan Lamak Bana'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
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
                      image: AssetImage('assets/images/makanan/minum_aqua.jpg'),
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text("Aqua Botol", style: TextStyle(fontSize: 17.0)),
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
                      image: AssetImage('assets/images/makanan/minum_es_teh.jpg'),
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text("ES Teh", style: TextStyle(fontSize: 17.0)),
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
                      image: AssetImage('assets/images/makanan/minum_teh_tawar.jpg'),
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text("Teh Anget/Tawar", style: TextStyle(fontSize: 17.0)),
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
                      image: AssetImage('assets/images/makanan/minum_es_jeruk.jpg'),
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text("ES Jeruk", style: TextStyle(fontSize: 17.0)),
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
