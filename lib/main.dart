import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFEEEEEE),
        body: Stack(
          children: <Widget>[
            Positioned(
                right: -getSmallDiameter(context) / 3,
                top: -getSmallDiameter(context) / 3,
                child: Container(
                  width: getSmallDiameter(context),
                  height: getSmallDiameter(context),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                )),
            Positioned(
                left: -getBigDiameter(context) / 4,
                top: -getBigDiameter(context) / 4,
                child: Container(
                  width: getBigDiameter(context),
                  height: getBigDiameter(context),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'dribble',
                      style: TextStyle(
                        fontFamily: "Pacifico",
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
            Positioned(
                right: -getBigDiameter(context) / 2,
                bottom: -getBigDiameter(context) / 2,
                child: Container(
                  width: getBigDiameter(context),
                  height: getBigDiameter(context),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFF3E9EE)),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListView(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    margin: const EdgeInsets.fromLTRB(29, 300, 20, 10),
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                    child: const Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.email, color: Color(0xFFFF4891)),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFF4891)),
                            ),
                            labelText: "Email:",
                            labelStyle: TextStyle(color: Color(0xFFFF4891)),
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(Icons.key, color: Color(0xFFFF4891)),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFF4891)),
                            ),
                            labelText: "Password:",
                            labelStyle: TextStyle(color: Color(0xFFFF4891)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                      child: const Text(
                        "FORGOT PASSWORD?",
                        style: TextStyle(
                          color: Color(0xFFFF4891),
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 20, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 40,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFB226B2),
                                    Color(0xFFFF6DA7)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {},
                                child: const Center(
                                  child: Text(
                                    "SIGN IN",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          mini: true,
                          elevation: 0,
                          child: Image.asset("assets/facebook.png"),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          mini: false,
                          elevation: 0,
                          child: Image.asset("assets/x.png"),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "DON'T HAVE AN ACCOUNT? ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "SIGN UP",
                        style: TextStyle(
                            color: Color(0xFFFF4891),
                            fontSize: 11,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
