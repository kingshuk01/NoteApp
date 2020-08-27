import 'package:flutter/material.dart';
import 'package:note_app/note.dart';

class Blocks extends StatefulWidget {
  @override
  _BlocksState createState() => _BlocksState();
}

class _BlocksState extends State<Blocks> {
  @override
  Widget build(BuildContext context) {
    return Container(
        
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 10,
              child: GestureDetector(
                onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Note()),
                        );
                      },
                child: Container(
                  width: 185,
                  height: 185,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,  
                  ),
                  child: Column(
                    
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          child: Text("Title",style: TextStyle(
                            fontSize: 30
                          ),),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom :30.0),
                        child: Container(
                          child: Text("Date",style: TextStyle(
                            fontSize: 18
                          ),),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purpleAccent,  
                ),
                width: 185,
                height: 185,
                child: Column(
                  
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        child: Text("Title",style: TextStyle(
                          fontSize: 30
                        ),),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom :30.0),
                      child: Container(
                        child: Text("Date",style: TextStyle(
                          fontSize: 18
                        ),),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 200,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow,  
                ),
                width: 390,
                height: 185,
                child: Column(
                  
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        child: Text("Title",style: TextStyle(
                          fontSize: 30
                        ),),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom :30.0),
                      child: Container(
                        child: Text("Date",style: TextStyle(
                          fontSize: 18
                        ),),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 400,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.pink,  
                ),
                width: 185,
                height: 185,
                child: Column(
                  
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        child: Text("Title",style: TextStyle(
                          fontSize: 30
                        ),),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom :30.0),
                      child: Container(
                        child: Text("Date",style: TextStyle(
                          fontSize: 18
                        ),),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 400,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,  
                ),
                width: 185,
                height: 185,
                child: Column(
                  
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        child: Text("Title",style: TextStyle(
                          fontSize: 30
                        ),),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom :30.0),
                      child: Container(
                        child: Text("Date",style: TextStyle(
                          fontSize: 18
                        ),),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        );
  }
}