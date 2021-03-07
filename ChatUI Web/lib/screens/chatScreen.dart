import 'package:chat_ui_web/utils/constants.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String user;
  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffedf0f5),
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
            padding: const EdgeInsets.only(top:20.0,),
            child: Divider(
              color: Colors.grey[300],
              height: 2,
              thickness: 2,
            ),
          ),

          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    color: Color(0xffedf0f5),

                  ),
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:15.0),
                          child: TextFormField(
                            cursorColor: taggedMessageColor,
                            decoration: InputDecoration(
                              hintText: "Write a message...",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 23, right: 15),
                              suffixIcon: Container(
                                width: 120,
                                child: Center(
                                  child: Row(
                                    children: [
                                      Icon(Icons.emoji_emotions_outlined,color: inactiveIconColor,),
                                      SizedBox(width: 10,),

                                      Icon(Icons.attach_file,color: inactiveIconColor,),
                                      SizedBox(width: 10,),
                                      
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical:8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: taggedMessageColor,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: Icon(Icons.send,color: primaryColor,),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
