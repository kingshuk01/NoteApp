import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  @override
  _NoteState createState() => _NoteState();
}

bool _isEditingText = false;
TextEditingController _editingController;
String initialText = "Body";

bool _isEditingTitleText = false;
TextEditingController _editingTitleController;
String initialTitleText = "Title";

class _NoteState extends State<Note> {
  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController(text: initialText);
    _editingTitleController = TextEditingController(text: initialTitleText);
  }

  @override
  void dispose() {
    _editingController.dispose();
    _editingTitleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
        actions: <Widget>[
          Padding(
            child: Icon(
              Icons.star_border,
            ),
            padding: const EdgeInsets.only(right: 15),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  alignment: Alignment.center, child: editTitleText()),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Text(
                  "Date",
                  style: TextStyle(fontSize: 15, color: Colors.white60),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
              child: Container(
                child: editBodyText(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class editTitleText extends StatefulWidget {
  @override
  _editTitleTextState createState() => _editTitleTextState();
}

class _editTitleTextState extends State<editTitleText> {
  @override
  Widget build(BuildContext context) {
    if (_isEditingTitleText)
      return Center(
        child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(border: InputBorder.none),
          onSubmitted: (newTitleValue) {
            setState(() {
              initialTitleText = newTitleValue;
              _isEditingTitleText = false;
            });
          },
          autofocus: true,
          controller: _editingTitleController,
        ),
      );
    return InkWell(
        onTap: () {
          setState(() {
            _isEditingTitleText = true;
          });
        },
        child: Text(
          initialTitleText,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 18.0,
          ),
        ));
  }
}

class editBodyText extends StatefulWidget {
  @override
  _editBodyTextState createState() => _editBodyTextState();
}

class _editBodyTextState extends State<editBodyText> {
  @override
  Widget build(BuildContext context) {
    if (_isEditingText)
      return Center(
        child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(border: InputBorder.none),
          onSubmitted: (newValue) {
            setState(() {
              initialText = newValue;
              _isEditingText = false;
            });
          },
          autofocus: true,
          controller: _editingController,
        ),
      );
    return InkWell(
        onTap: () {
          setState(() {
            _isEditingText = true;
          });
        },
        child: Text(
          initialText,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 18.0,
          ),
        ));
  }
}
