import 'package:chat_ui_web/screens/chatScreen.dart';
import 'package:chat_ui_web/utils/constants.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {

  List<dynamic> chats = [
    ['Joey Tribbiani' , '11:05 AM' , 'joey.png',"Joey Doesn't Share Food",],
    ['Chandler Bing' , '11:01 AM' , 'chandler.png',"I make jokes when i am uncomfortable",],
    ['Rachel Green' , '10:05 AM' , 'rachel.png',"Why is gunther behind me ?",],
    ['Pheobe Buffay' , '10:05 AM' , 'pheobe.png',"I was born on my birthday !!",],
    ['Ross Geller' , '09:27 AM' , 'ross.png',"We were on a break !!",],
    ['Monica Geller' , '09:12 AM' , 'monica.png',"Have you seen my broom ?",]
  ];

  int chatIndex = 0;
  String userName;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userName = chats[chatIndex][0];
  }

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

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
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
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: chatScreenColor, width: 0.0),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                fillColor: chatScreenColor,
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
                          ),

                          SizedBox(height: 25,),

                          Container(
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: chats.length,
                                itemBuilder: (context,index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(vertical:8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: ListTile(
                                        onTap: () {
                                          setState(() {
                                            chatIndex = index;
                                            userName = chats[index][0];
                                          });
                                        },
                                        selected: chatIndex==index,
                                        selectedTileColor: chatScreenColor,
                                        leading: CircleAvatar(
                                          maxRadius: 25,
                                          backgroundImage: AssetImage('assets/images/${chats[index][2]}'),
                                        ),
                                        trailing: Text(
                                          chats[index][1],
                                        ),
                                        title: Text(
                                          chats[index][0],
                                        ),
                                        subtitle: Text(
                                          chats[index][3],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: IndexedStack(
                index: chatIndex,
                children : [
                  for(int i=0;i<chats.length;i++) ChatScreen(user: userName,)
                ]
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
