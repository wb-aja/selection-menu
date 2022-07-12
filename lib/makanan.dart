import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Makanan extends StatelessWidget {
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
                children: [
                  Ink.image(
                    image: NetworkImage('https://drive.google.com/file/d/19Cri7VJTHZSBdM7rBJTxMrT5pktg99Cc/view?usp=sharing'),
                    height: 70,
                    fit: BoxFit.cover,
                  )
                ],
              )),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.emoji_food_beverage_outlined, size: 70, color: Colors.blueAccent),
                    Text("Minuman", style: TextStyle(fontSize: 17.0)),
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
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.fastfood_outlined, size: 70, color: Colors.blueAccent),
                    Text("Snack", style: TextStyle(fontSize: 17.0)),
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
