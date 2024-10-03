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
          appBar: AppBar(
            title: const Text('My Widget'),
          ),
          body: (MediaQuery.of(context).orientation == Orientation.portrait)
              ? Column(
                  children: buildContainers(),
                )
              : Row(
                  children: buildContainers(),
                )),
    );
  }

  List<Widget> buildContainers() {
    return <Widget>[
      Container(
        color: Colors.red,
        width: 50,
        height: 50,
      ),
      Container(
        color: Colors.green,
        width: 50,
        height: 50,
      ),
      Container(
        color: Colors.blue,
        width: 50,
        height: 50,
      ),
      Container(
        color: Colors.cyan,
        width: 50,
        height: 50,
      )
    ];
  }
}
