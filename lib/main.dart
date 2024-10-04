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
          title: const Text('Button Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated Button'),
              ),
              Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          colors: [Colors.red, Colors.blue],
                          begin: Alignment.center,
                          end: Alignment.bottomCenter)),
                  child: InkWell(
                    splashColor: Colors.amber,
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    child: const Center(
                      child: Text('Inkwell Button',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
