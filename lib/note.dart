import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            backgroundColor: Colors.grey[900],
            elevation: 0,
            actions: <Widget>[
              Padding(
                child: Icon(Icons.edit,),
                padding: const EdgeInsets.only(right: 15),)
            ],
          ),
          body: Container(
            child: Column(             
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text("Title of the Note",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    child: Text("Date",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white60
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50,left:15,right:15),
                  child: Container(
                    child: Text("Body of the note .......................",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70
                    ),),
                  ),
                )
              ],
            ),
          ),
    );
  }
}