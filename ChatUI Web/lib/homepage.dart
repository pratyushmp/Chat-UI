import 'package:chat_ui_web/screens/calls.dart';
import 'package:chat_ui_web/screens/chats.dart';
import 'package:chat_ui_web/screens/events.dart';
import 'package:chat_ui_web/screens/seen.dart';
import 'package:chat_ui_web/screens/stats.dart';
import 'package:chat_ui_web/screens/timer.dart';
import 'package:flutter/material.dart';

import 'utils/constants.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int navIndex = 0;

  List<IconData> icons = [
    Icons.timer,
    Icons.event_available_rounded,
    Icons.remove_red_eye_outlined,
    Icons.people_alt_rounded,
    Icons.bar_chart,
    Icons.videocam,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: primaryColor,
        child: Row(
          children: [
            Container(
              width: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Icon(Icons.favorite,color: Colors.red,),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Container(
                      child: ListView.separated(
                        itemCount: icons.length,
                        separatorBuilder: (context,index) {
                          return SizedBox(
                            height: 15,
                          );
                        },
                        itemBuilder: (context,index) {
                          return GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              setState(() {
                                navIndex = index;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:25.0),
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                      curve: Curves.linear,
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: (navIndex == index)? Colors.green.withOpacity(0.3) : primaryColor,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Icon(
                                        icons[index],color: (navIndex == index)? taggedMessageColor : inactiveIconColor,
                                      )
                                  ),
                                ),

                                Opacity(
                                  opacity: (navIndex == index)? 1: 0,
                                  child: Container(
                                    width: 2,
                                    height: 40,
                                    color: taggedMessageColor,
                                  ),
                                )
                              ],
                            ),
                          );
                        }
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom:15.0),
                          child: CircleAvatar(
                            // backgroundImage: AssetImage('assets/images/me.png'),
                            maxRadius: 25,
                            backgroundColor: primaryColor,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Image.asset('assets/images/me.png')
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            Expanded(
              child: IndexedStack(
                children: [
                  Timer(),
                  Events(),
                  Seen(),
                  Chats(),
                  Stats(),
                  Calls(),
                ],
                index: navIndex,
              ),
            )
          ],
        ),
      ),
    );
  }
}