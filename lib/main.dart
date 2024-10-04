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
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Cusome Card example',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xFF8C062F)),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFfe5788), Color(0xFFf56d5d)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            child: SizedBox(
                height: height * 0.7,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Stack(
                    children: <Widget>[
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://img.freepik.com/free-vector/abstract-pattern-design_1053-534.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Container(
                        height: height * 0.35,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          image: DecorationImage(
                            image: NetworkImage('https://picsum.photos/400'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.fromLTRB(20, 50 + height * 0.35, 20, 20),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              const Text(
                                "Beautiful Sunset at Paddy Field",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Posted on",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.orange,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "29 June 2024",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ]),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.thumb_up,
                                            size: 18,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "99",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                            ),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                      SizedBox(width: 20),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.comment,
                                            size: 18,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "888",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                            ),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ]),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
