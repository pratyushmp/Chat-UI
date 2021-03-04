import 'package:flutter/material.dart';

import 'utils/constants.dart';
import 'utils/constants.dart';
import 'utils/constants.dart';
import 'utils/constants.dart';
import 'utils/constants.dart';
import 'utils/constants.dart';
import 'utils/constants.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [


                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:25.0),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Icon(
                                    Icons.timer,color: inactiveIconColor,
                                  )
                                ),
                              ),

                              Opacity(
                                opacity: 0,
                                child: Container(
                                  width: 2,
                                  height: 40,
                                  color: taggedMessageColor,
                                ),
                              )
                            ],
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:25.0),
                                child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Icon(Icons.event_available_rounded,color: inactiveIconColor),
                                ),
                              ),

                              Opacity(
                                opacity: 0,
                                child: Container(
                                  width: 2,
                                  height: 40,
                                  color: taggedMessageColor,
                                ),
                              )
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:25.0),
                                child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Icon(Icons.remove_red_eye_outlined,color: inactiveIconColor),
                                ),
                              ),

                              Opacity(
                                opacity: 0,
                                child: Container(
                                  width: 2,
                                  height: 40,
                                  color: taggedMessageColor,
                                ),
                              )
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:25.0),
                                child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Icon(Icons.people_alt_rounded,color: taggedMessageColor),
                                ),
                              ),

                              Opacity(
                                opacity: 1,
                                child: Container(
                                  width: 2,
                                  height: 40,
                                  color: taggedMessageColor,
                                ),
                              )
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:25.0),
                                child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Icon(Icons.bar_chart,color: inactiveIconColor),
                                ),
                              ),

                              Opacity(
                                opacity: 0,
                                child: Container(
                                  width: 2,
                                  height: 40,
                                  color: taggedMessageColor,
                                ),
                              )
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:25.0),
                                child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Icon(Icons.videocam,color: inactiveIconColor)
                                ),
                              ),

                              Opacity(
                                opacity: 0,
                                child: Container(
                                  width: 2,
                                  height: 40,
                                  color: taggedMessageColor,
                                ),
                              )
                            ],
                          ),

                        ],
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
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color:Colors.grey)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}