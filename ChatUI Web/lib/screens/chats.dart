import 'package:chat_ui_web/utils/constants.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color:Colors.grey)
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left:5.0),
                            child: Icon(Icons.arrow_back_ios,color: inactiveIconColor,size: 15,),
                          ),
                        ),
                      ),

                      SizedBox(width: 10,),

                      Text(
                        "Chat",
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

                  Container(
                    height: 210,
                    child: Row(
                      children: [
                        Expanded(
                          flex:2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                children: [
                                  CircleAvatar(
                                    // backgroundImage: AssetImage('assets/images/me.png'),
                                    maxRadius: 55,
                                    backgroundImage: AssetImage('assets/images/me.png'),
                                    backgroundColor: primaryColor,
                                    // child: ClipRRect(
                                    //     borderRadius: BorderRadius.circular(22),
                                    //     child: Image.asset('assets/images/me.png')
                                    // ),
                                  ),
                                  Positioned(
                                    right: 5,
                                    bottom: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(1.5),
                                        child: CircleAvatar(
                                          maxRadius: 5,
                                          backgroundColor: Colors.green,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),

                              Text(
                                "Aswin Gopinathan",
                                style: TextStyle(
                                  fontSize: 25,

                                ),
                              ),

                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Available",
                                        style: TextStyle(
                                          color: taggedMessageColor
                                        ),
                                      ),

                                      Icon(Icons.keyboard_arrow_down,size: 15,color: taggedMessageColor,)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical:10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        fillColor: Colors.grey[100],
                        filled: true,
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: inactiveIconColor
                        ),
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Last Chats",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),

                      Row(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(Icons.add,size: 15,color: taggedMessageColor,),
                            ),
                          ),

                          SizedBox(width: 10,),

                          Icon(Icons.more_vert,color: inactiveIconColor,),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
            ),
          )
        ],
      ),
    );
  }
}
