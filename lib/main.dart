import 'package:flutter/material.dart';
import 'package:whiteboard/whiteboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }
WhiteBoardController whiteBoardController =WhiteBoardController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whiteboard',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Whiteboard'),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: WhiteBoard(
                  strokeColor: Colors.black,
                  
                ),
                
              ),
              TextButton(onPressed: (){
                whiteBoardController.clear();
              }, child: Text('clear'))
            ],
          ),
        ),
      ),
    );
  }
}