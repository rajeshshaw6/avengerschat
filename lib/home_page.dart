import 'package:chat_app/chat_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.tealAccent,
        title: new Center(
          child: new Text("Avengers Chat",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
      body: new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Image(
          fit: BoxFit.cover,
          image: new AssetImage("assets/superman.jpeg"),
          color: Colors.black87,
          colorBlendMode: BlendMode.darken,
        ),
        new ChatScreen(),
      ],

      ),
    );
  }
}
