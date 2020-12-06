import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("hello"),
//         ),
//         body: Center(
//             child: Container(
//                 color: Colors.blue,
//                 width: 100,
//                 height: 100,
//                 child: Text(
//                   "sayur bayam asem tentu saja tidak begitu enak",
//                   style: TextStyle(color:Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize:30),
//                   // textAlign: TextAlign.center,
//                   // maxLines: 2,
//                   // overflow: TextOverflow.visible,
//                   // softWrap: false,
//                 ))),
//       ),
//     );
//   }
// }

// -> column and row
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text("Row dan Column"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center, //horizontal(y)
//         crossAxisAlignment: CrossAxisAlignment.start, //vertikal(x)
//         children: <Widget>[
//           Text("text1"),
//           Text("text2"),
//           Text("text3"),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[Text("text4"), Text("text5")],
//           )
//         ],
//       ),
//     ));
//   }
// }

// -> Property Container
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Container"),
//         ),
//         body: Container(
//           color: Colors.lightBlue,
//           margin: EdgeInsets.fromLTRB(10, 5, 15, 20),
//           padding: EdgeInsets.only(bottom: 30),
//           child: Container(
//             // color: Colors.red,
//             margin: EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//                 gradient: LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: <Color>[
//                       Colors.amber,
//                       Colors.blue,
//                       Colors.green[100],
//                       Colors.red[300]
//                 ])),
//           ),
//         ),
//       ),
//     );
//   }
// }
// -> Stateless and stateful widget
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
// class _MyAppState extends State<MyApp> {
//   int number=0;
//   void tekanTombol() {
//     setState(() {
//       number++;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text("Stateless and stateful widget"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment:MainAxisAlignment.center,
//           children: <Widget>[
//             Text(number.toString(),style: TextStyle(fontSize: 10+number.toDouble()),),
//             RaisedButton(
//               child: Text("Tambah bilangan"),
//               onPressed: tekanTombol,
//             )
//           ],
//         ),
//       ),
//     ));
//   }
// }
//-> Anonymous
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String message = "ini adalah text";
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Anonymous"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(message),
//               RaisedButton(
//                 child: Text("tekan"),
//                 onPressed: () {
//                   setState(() {
//                     message = "tombol di tekan";
//                   });
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//-> list and listview
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<Widget> widgets = [];
//   int jml=5;
//   _MyAppState(){
//     for(int i=0;i<jml;i++){
//       widgets.add(Text("data "+i.toString(),style: TextStyle(fontSize: 20)));
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("list and listview"),
//         ),
//         body: ListView(
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 RaisedButton(
//                   child: Text("tambah"),
//                   onPressed: (){
//                     setState(() {
//                       widgets.add(Text("data "+jml.toString(),style: TextStyle(fontSize: 20),));
//                       jml++;
//                     });
//                   },
//                 ),
//                 RaisedButton(
//                   onPressed: (){
//                     setState(() {
//                       widgets.removeLast();
//                       jml--;
//                     });
//                   },
//                   child: Text("hapus"),
//                 )
//               ],
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: widgets,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//-> Text Style
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Text Style"),
//         ),
//         body: Center(
//           child: Text(
//             "hello",
//             style: TextStyle(
//                 fontFamily: "EastSeaDokdo",
//                 fontSize: 50,
//                 decoration: TextDecoration.overline,
//                 decorationColor: Colors.lightBlue,
//                 decorationStyle: TextDecorationStyle.dotted
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// ->Animate
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random rand = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animate"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              color: Color.fromARGB(
                  255, rand.nextInt(256), rand.nextInt(256), rand.nextInt(256)),
              duration: Duration(seconds: 1),
              width: rand.nextInt(300) + 1.0,
              height: rand.nextInt(300) + 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
