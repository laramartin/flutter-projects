import 'package:flutter/material.dart';

class CitiesScreen extends StatelessWidget {

  var _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _displayDialog(context),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: Container(
        color: Colors.lightBlueAccent,
      ),
    );
  }

  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Search your favorite city'),
            content: TextField(
              decoration: InputDecoration(hintText: "e.g. Berlin, Taipei"),
              controller: _textEditingController,
            ),
            actions: <Widget>[
              FlatButton(
                child: new Text("Cancel".toUpperCase()),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: new Text("Accept".toUpperCase()),
                onPressed: () {
                  var userInput = _textEditingController.text;
                  print("Input user. City: $userInput");
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
