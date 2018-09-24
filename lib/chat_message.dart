import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String _name = "Rajesh";
  final String text;
  ChatMessage(this.text);
  @override
  Widget build(BuildContext context) {
    return new Container(
     margin: EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Padding(padding: EdgeInsets.only(left:8.0)),
          new CircleAvatar(
            backgroundColor: Colors.redAccent,
            child: new Text(_name[0],style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
            ),
            ),
          ),
          new Padding(padding: EdgeInsets.only(right: 8.0)),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_name,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19.0,
                color: Colors.green,
              ),
              ),
              new Padding(padding: EdgeInsets.only(top:5.0)),
              new Text(text,style: TextStyle(
                  color: Colors.deepPurpleAccent,
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
