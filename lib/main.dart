import 'package:flutter/material.dart';
import 'package:spotter_on2/telas/HomeScreen.dart';

void main() => runApp(Spotter());

class Spotter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Medição Online",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 50, 92, 127),
      ),
      debugShowCheckedModeBanner: false,
      home: TelaInicial(),
    );
  }
}
