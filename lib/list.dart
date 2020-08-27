import 'package:flutter/material.dart';

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {

  int index =0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: index,
        itemBuilder: (BuildContext context,int index){
          return Container(
            child: Container(
                width: 185,
                height: 185,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,  
                ),
              ),
          );
      }
      
      
    )
    );
  }
}