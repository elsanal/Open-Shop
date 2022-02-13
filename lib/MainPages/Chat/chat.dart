import 'package:flutter/material.dart';


class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text("Chat now",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ));
  }
}
