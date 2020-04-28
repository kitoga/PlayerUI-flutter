import 'package:flutter/material.dart';
import 'package:playerui/tabs.dart';

import './players.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                ),
                color: Colors.deepPurpleAccent,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(25, 35, 25, 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('BFIFA',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text('(friends)',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white
                          ),
                        ),
                        Icon(Icons.arrow_drop_down, color: Colors.white,),
                        Spacer(),
                        Icon(Icons.search, color:Colors.white, size: 28)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                            child: Container(
                            color: Colors.deepPurpleAccent,
                            child: Container(
                  
                        constraints: BoxConstraints(
                          maxHeight: 200,
                          minHeight: 200,
                          maxWidth: 360,
                          minWidth: 360,
                        ),
                        child: Column(
                          children: <Widget>[
                            DefaultTabController(
                            length: 3,
                            initialIndex: 0,
                            child: Expanded(
                            child: Column(
                                children: [
                                Material(
                                  color: Colors.green,
                                  child: TabBar(
                                    indicatorColor:
                                        Colors.red,
                                    labelColor: Colors.pink,
                                    unselectedLabelColor:
                                        Colors.white,
                                    tabs: [
                                      Tab(
                                          child: Text(
                                        'Today',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15
                                        ),
                                      )),
                                      Tab(
                                          child: Text(
                                        'Month',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15
                                        ),
                                      )),
                                      Tab(
                                          child: Text(
                                        'All Time',
                                        style: TextStyle( 
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15
                                     ),
                                      ))
                                    ])),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  Tabs(),
                          
                            Container(
                               child: ListView(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      children: <Widget>[
                                        Tabs(),
                                      ],
                                    ),
                                  ),

                                  
                           Container(
                              child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Tabs(),
                                   ],
                                 ),
                                ),
                              ],
                            ),
                           )
                         ],
                       ),
                      )
                     ),
                    ],
                  ),
                 ),
                ), 
               )
              ],
             ),
           ],
                ),
              ),
            ),
            Container(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: Row(
                  children: <Widget>[
                    Text('14',
                    style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                    ),
                    SizedBox(width: 15,),
                    Text('Chidex K drew',
                      style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                    ),
                    SizedBox(width: 5,),
                    Text('(you)',
                      style: TextStyle(
                        color: Colors.black54
                      ),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text('points'),
                        SizedBox(height: 1,),
                        Text('560',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 25),
              child: Text('BFIFA Top Players',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 10),
             Players(),
          ],
        ),
      ),
    );
  }
}

