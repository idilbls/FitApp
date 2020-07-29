//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'Login_Page.dart';
import 'afterSingUp_1.dart';
import 'contants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'afterSingUp_3.dart';
import 'contants.dart';

class afterSingUp_2 extends StatefulWidget {
  @override
  _afterSingUp_2State createState() => _afterSingUp_2State();
}

class _afterSingUp_2State extends State<afterSingUp_2> {
  void getProfile() async {
    final profile = await _fireStore.collection('profile').getDocuments();
  }

  _updateBrith() async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    setState(() {
      _userEmail = user.email;
      print('object deneme $email');
      try {
        databaseReference
            .collection('profile')
            .document('$_userEmail')
            .updateData({'brith': '$birth'});
      } catch (e) {
        print(e.toString());
      }
    });
  }
  //seçilen dogum tarihini update edilir

  final _fireStore = Firestore.instance;
  var date;
  var birth;
  String _userEmail;
  @override
  Widget build(BuildContext context) {
    DateTime _dateTime = DateTime.now();
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      body: Container(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    my_iconbutton(
                      iconsize: MediaQuery.of(context).size.height * 0.4,
                      iconImageName: 'images/back_icon.png',
                      click: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => afterSingUp_1()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                'What is your brithdate ? ',
                style: kBigLabelTextStyle,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Column(children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.40,
                  child: CupertinoDatePicker(
                    minimumYear: 1940,
                    maximumYear: 2020,
                    mode: CupertinoDatePickerMode.date,
                    backgroundColor: Color(0XFFE5E5E5),
                    onDateTimeChanged: (DateTime newdate) {
                      birth = newdate;
                    },
                    initialDateTime: _dateTime,
                  ),
                ),
              ]),
              Container(
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      WelcomePageButton(
                          buttonTitle: 'NEXT',
                          click: () {
//                            _fireStore.collection('profile').add({
//                              'date': birth,
//                            });

                            _updateBrith();
                            print('$birth');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => afterSingUp_3()),
                            );
                          },
                          buttonColor: kActiveCardColor),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DatePickerDateOrder {
  /// Order of the columns, from left to right: day, month, year.
  ///
  /// Example: 12 | March | 1996
  dmy,

  /// Order of the columns, from left to right: month, day, year.
  ///
  /// Example: March | 12 | 1996
  mdy,

  /// Order of the columns, from left to right: year, month, day.
  ///
  /// Example: 1996 | March | 12
  ymd,

  /// Order of the columns, from left to right: year, day, month.
  ///
  /// Example: 1996 | 12 | March
  ydm,
}
//Dogum tarihi seçme butonu
