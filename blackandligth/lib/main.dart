import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatefulWidget {
  @override
  _MeuAppState createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  bool ehDark = true;
  var _themeData = ThemeData.dark();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ehDark == false ? _themeData : null,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Alterar Tema do App"),
        ),
        body: Center(
          child: Text(
            ehDark == false ? "Desligado" : "Ligado",
            style: TextStyle(fontSize: 30),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.fireplace),
          onPressed: () {
            setState(() {
              ehDark = ehDark == true ? false : true;
            });
          },
        ),
      ),
    );
  }
}
