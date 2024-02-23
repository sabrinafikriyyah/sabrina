import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
   @override
   Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('contoh Button'),
        ),
        body: Center(child: Column(children: <Widget> [
          Container(
            margin: EdgeInsets.all(20),
            child: TextButton(
              child: Text("Flat Button Here"),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
                padding: EdgeInsets.all(30),
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
            ),
          )
        ]
        ),
        ),
      )
    );
   }
   }