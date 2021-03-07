import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  String user;
  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: [
          SizedBox(height: 30,),

          Row(
            children: [

              SizedBox(width: 10,),

              Text(
                widget.user,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical:20.0,),
            child: Divider(
              color: Colors.grey[300],
              height: 2,
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
