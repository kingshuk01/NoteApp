import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/blocks.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("Notes",style: TextStyle(
          color: Colors.white,
          fontSize: 20

        ),),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right : 15),
            child: Icon(Icons.search,color: Colors.white,),
          )
        ],
        elevation: 0,
      ),
      body: Blocks()
      
    );
  }
}