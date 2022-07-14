import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Minuman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Rumah Makan Lamak Bana'),
      ),
      body: Stack(
        children: [
          GridView.count(
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
                        Text("Aqua Botol", style: TextStyle(fontSize: 17.0)),
                        SizedBox(height: 8),
                        Ink.image(
                          image: AssetImage('assets/images/minuman/minum_aqua.jpg'),
                          height: 85,
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
                        Text("Es Teh", style: TextStyle(fontSize: 17.0)),
                        SizedBox(height: 8),
                        Ink.image(
                          image: AssetImage('assets/images/minuman/minum_es_teh.jpg'),
                          height: 85,
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
                        Text("Teh Anget/Tawar", style: TextStyle(fontSize: 17.0)),
                        SizedBox(height: 8),
                        Ink.image(
                          image: AssetImage('assets/images/minuman/minum_teh_tawar.jpg'),
                          height: 85,
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
                        Text("Es Jeruk88", style: TextStyle(fontSize: 17.0)),
                        SizedBox(height: 8),
                        Ink.image(
                          image: AssetImage('assets/images/minuman/minum_es_jeruk.jpg'),
                          height: 85,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  height: 50,
                  //width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
