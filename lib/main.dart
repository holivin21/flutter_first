import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
        ),
        body: Center(
            child: Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                child: Text(
                  "sayur bayam asem tentu saja tidak begitu enak",
                  style: TextStyle(color:Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize:30),
                  // textAlign: TextAlign.center,
                  // maxLines: 2,
                  // overflow: TextOverflow.visible,
                  // softWrap: false,
                ))),
      ),
    );
  }
}
