import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'afterSingUp_6.dart';
import 'home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'contants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';




class afterSingUp_Finish extends StatefulWidget {
  @override
  _afterSingUp_FinishState createState() => _afterSingUp_FinishState();
}

class _afterSingUp_FinishState extends State<afterSingUp_Finish> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFE5E5E5),
        resizeToAvoidBottomPadding: false,
        body: Container(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height * 0.075,
                    child: Row(
                      children: <Widget>[
                        my_iconbutton(
                          iconImageName: 'images/back_icon.png',
                          click: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    )),
                Container(
                  height: MediaQuery.of(context).size.height * 0.075,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Here is your plan',
                        style: kNormalLabelTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center ,
                  width:350,
                  height: 370,
                  margin: const EdgeInsets.all(5.0),
                  padding: EdgeInsets.all(6.0),
                  child:ListView.separated(
                    itemBuilder: (context, index) {
                      return (
                          Column(
                              children: <Widget>[

                                Text(
                                  "$durum",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                    fontFamily: 'Rajdhani',
                                    color: Colors.black.withOpacity(0.57),
                                  ),
                                ),
                                Card(
                                  color: Colors.white,
                                  elevation: 8.0,
                                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0,
                                      16.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading: Text("Monday ",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'Rajdhani',
                                            color: Colors.purple.withOpacity(0.67),
                                          ),
                                        ),
                                        title: Text("$monday",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'Rajdhani',
                                            color: Colors.black.withOpacity(0.67),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  color: Colors.white,
                                  elevation: 8.0,
                                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0,
                                      16.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading: Text("Tuesday ",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'Rajdhani',
                                            color: Colors.purple.withOpacity(0.67),
                                          ),
                                        ),
                                        title: Text("$tuesday",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'Rajdhani',
                                            color: Colors.black.withOpacity(0.67),
                                          ),
                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  color: Colors.white,
                                  elevation: 8.0,
                                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0,
                                      16.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading: Text("Wednesday",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'Rajdhani',
                                            color: Colors.purple.withOpacity(0.67),
                                          ),
                                        ),
                                        title: Text("$wednesday",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'Rajdhani',
                                            color: Colors.black.withOpacity(0.67),
                                          ),
                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  color: Colors.white,
                                  elevation: 8.0,
                                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0,
                                      16.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading: Text("Thursday ",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'Rajdhani',
                                            color: Colors.purple.withOpacity(0.67),
                                          ),
                                        ),
                                        title: Text("$thursday",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'Rajdhani',
                                            color: Colors.black.withOpacity(0.67),
                                          ),
                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  color: Colors.white,
                                  elevation: 8.0,
                                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0,
                                      16.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading: Text("Friday      ",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'Rajdhani',
                                            color: Colors.purple.withOpacity(0.67),
                                          ),
                                        ),
                                        title: Text("$friday",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'Rajdhani',
                                            color: Colors.black.withOpacity(0.67),
                                          ),
                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  color: Colors.white,
                                  elevation: 8.0,
                                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0,
                                      16.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading: Text("Saturday ",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'Rajdhani',
                                            color: Colors.purple.withOpacity(0.67),
                                          ),
                                        ),
                                        title: Text("$saturday",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'Rajdhani',
                                            color: Colors.black.withOpacity(0.67),
                                          ),
                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  color: Colors.white,
                                  elevation: 8.0,
                                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0,
                                      16.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading: Text("Sunday ",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'Rajdhani',
                                            color: Colors.purple.withOpacity(0.67),
                                          ),
                                        ),
                                        title: Text("$sunday",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: 'Rajdhani',
                                            color: Colors.black.withOpacity(0.67),
                                          ),
                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                              ]
                          )
                      );
                    },separatorBuilder: (context, index,) => Divider(),
                    itemCount: 1,
                  ),
                ),


                Container(
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        WelcomePageButton(
                            buttonTitle: 'LET S START',
                            click: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => home()),
                              );
                            },

                            buttonColor: kActiveCardColor)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
