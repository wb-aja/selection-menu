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
                  alignment: Alignment.bottomCenter,
                  children: [
                    Text("Ayam Bakar", style: TextStyle(fontSize: 17.0)),
                    Ink.image(
                      image: AssetImage('assets/images/makanan/lauk_ayam_bakar.jpg'),
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
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
                      image: AssetImage('assets/images/makanan/lauk_gulai_cumi.jpg'),
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text("Gulai Cumi", style: TextStyle(fontSize: 17.0)),
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
                      image: AssetImage('assets/images/makanan/lauk_ikan_tenggiri_asam.jpg'),
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text("Ikan Tenggiri", style: TextStyle(fontSize: 17.0)),
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
                      image: AssetImage('assets/images/makanan/lauk_kembung_bakar.jpg'),
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text("Kembung Bakar", style: TextStyle(fontSize: 17.0)),
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
                      image: AssetImage('assets/images/makanan/lauk_rendang.jpg'),
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text("Rendang", style: TextStyle(fontSize: 17.0)),
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
                      image: AssetImage('assets/images/makanan/nasi_putih.jpg'),
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text("Nasi Putih", style: TextStyle(fontSize: 17.0)),
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
