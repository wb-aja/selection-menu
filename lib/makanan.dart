import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home_screen.dart';

class Makanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Rumah Makan Lamak Bana'),
      ),
      body: Stack(
        children: [
          GridView.count(
            padding: const EdgeInsets.all(25),
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
                        Text("Ayam Bakar", style: TextStyle(fontSize: 17.0)),
                        SizedBox(height: 8),
                        Ink.image(
                          image: AssetImage('assets/images/makanan/lauk_ayam_bakar.jpg'),
                          height: 70,
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
                        Text("Gulai Cumi", style: TextStyle(fontSize: 17.0)),
                        SizedBox(height: 8),
                        Ink.image(
                          image: AssetImage('assets/images/makanan/lauk_gulai_cumi.jpg'),
                          height: 70,
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
                        Text("Ikan Tenggiri", style: TextStyle(fontSize: 17.0)),
                        SizedBox(height: 8),
                        Ink.image(
                          image: AssetImage('assets/images/makanan/lauk_ikan_tenggiri_asam.jpg'),
                          height: 70,
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
                        Text("Kembung Bakar", style: TextStyle(fontSize: 17.0)),
                        SizedBox(height: 8),
                        Ink.image(
                          image: AssetImage('assets/images/makanan/lauk_kembung_bakar.jpg'),
                          height: 70,
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
                        Text("Rendang", style: TextStyle(fontSize: 17.0)),
                        SizedBox(height: 8),
                        Ink.image(
                          image: AssetImage('assets/images/makanan/lauk_rendang.jpg'),
                          height: 70,
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
                        Text("Nasi Putih", style: TextStyle(fontSize: 17.0)),
                        SizedBox(height: 8),
                        Ink.image(
                          image: AssetImage('assets/images/makanan/nasi_putih.jpg'),
                          height: 70,
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
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => HomeScreen()),
                      );
                    },
                    child: const Text(
                      'Home',
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
