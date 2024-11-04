import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Latihan Hero Animation',
              style: TextStyle(color: Colors.white)),
        ),
        body: GestureDetector(
          onTap: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SecondPage()))
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: const SizedBox(
              width: 100,
              height: 100,
              child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://1.vikiplatform.com/pr/21277pr/28a7fcb34a.jpg?x=b&s=480x270&e=t&q=g")),
            ),
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Latihan Hero Animation',
              style: TextStyle(color: Colors.white)),
        ),
        body: Hero(
          tag: 'PP',
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const SizedBox(
                width: 200,
                height: 200,
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://1.vikiplatform.com/pr/21277pr/28a7fcb34a.jpg?x=b&s=480x270&e=t&q=g")),
              ),
            ),
          ),
        ));
  }
}
