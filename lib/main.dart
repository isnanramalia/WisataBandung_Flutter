import 'package:app1/main_screen.dart';
import 'package:app1/model/tourism_place.dart';
import 'package:flutter/material.dart';
import 'package:app1/detail_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required TourismPlace place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea( // safe area memberikan padding otomatis menyesuaikan perangkat yg digunakan
          child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/farm-house.jpg'),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: const Text('Farm House Lembang',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
          ),),
          ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text('Open Everyday'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(height: 8.0),
                      Text('09.00 - 20.00'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8.0),
                      Text('RP 25.000'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Berada di jalur tama Bandung-Lembung, Farm House menjadi objek wisata yang atidak pernah sepi pengunjung. SElain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),

              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.network('https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child:Image.network('https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.network('https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg')
                  ),
                ],
            ),
          ),
        ],
        ),
        ),
        ),
    );
  }
}