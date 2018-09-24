import 'package:chat_app/chat_message.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  State createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = new TextEditingController();
  final List<String> _messages = <String>[];
  void _handleSubmitted(String text) {
    _textController.clear();
    String message = text;

    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: IconThemeData(
        color: Colors.blue,
      ),
      child: new Container(
        padding: EdgeInsets.only(left: 6.0),
        child: new Row(
          children: <Widget>[
            new Theme(
              data: new ThemeData(
                brightness: Brightness.dark,

              ),
                          child: new Flexible(
                child: new TextField(
                  decoration: new InputDecoration.collapsed(
                    hintText: "Send a message",
                    hintStyle: TextStyle(
                      fontSize: 17.0,
                      color: Colors.tealAccent,
                    ),
                  ),
                  controller: _textController,
                  onSubmitted: _handleSubmitted,
                ),
              ),
            ),
            new Container(
              child: new IconButton(
                icon: Icon(Icons.send),
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Flexible(
          child: new ListView.builder(
            reverse: true,
            itemBuilder: (BuildContext context, int index) =>
                ChatMessage(_messages[index]),
            itemCount: _messages.length,
          ),
        ),
        new Container(
          decoration: new BoxDecoration(
            border: new Border.all(
              width: 1.0,
              color: Colors.black,
            ),
            
          
          ),
          child: _textComposerWidget(),
        ),
        
      ],
    );
  }
}
