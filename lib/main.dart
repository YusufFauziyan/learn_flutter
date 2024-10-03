import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          // Menggunakan Center untuk menempatkan konten di tengah
          child: Container(
            margin: const EdgeInsets.all(10),
            child: ListView(
              shrinkWrap:
                  true, // Menambahkan shrinkWrap untuk menyesuaikan tinggi ListView
              children: <Widget>[
                cardList(Icons.account_circle, 'One-line with leading icon'),
                cardList(Icons.android, 'One-line with leading icon'),
                cardList(Icons.abc_outlined, 'One-line with leading icon'),
                cardList(Icons.ios_share, 'One-line with leading icon'),
                cardList(
                    Icons.access_alarms_outlined, 'One-line with leading icon')
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Card cardList(IconData icon, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(margin: const EdgeInsets.all(7), child: Icon(icon)),
          Text(text)
        ],
      ),
    );
  }
}
