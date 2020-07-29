import 'contants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Login_Page.dart';

import 'afterSingUp_1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'contants.dart';

import 'afterSingUp_1.dart';
import 'afterSingUp_3.dart';
import 'afterSingUp_5.dart';

class afterSingUp_4 extends StatefulWidget {
  @override
  _afterSingUp_4State createState() => _afterSingUp_4State();
}

int weight;
enum WeightType {
  Kg,
  Ibm,
}

WeightType selectedWeight = WeightType.Kg;
String strWeight = 'Kg';

String _userEmail;

class _afterSingUp_4State extends State<afterSingUp_4> {
  _updateWeight() async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    setState(() {
      _userEmail = user.email;
      print('object deneme $email');
      try {
        databaseReference
            .collection('profile')
            .document('$_userEmail')
            .updateData({'weight': weight});
      } catch (e) {
        print(e.toString());
      }
    });
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Start FitApp"),
          content: new Text("please fill the form"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                SafeArea(
                  child: my_iconbutton(
                    iconsize: null,
                    iconBackgrundColor: null,
                    iconImageName: 'images/back_icon.png',
                    click: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => afterSingUp_3()),
                      );
                    },
                  ),
                ),
              ],
            )),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.ideographic,
                  children: <Widget>[
                    Text(
                      'What is your weight?!',
                      style: kBigLabelTextStyle,
                    ),
                  ],
                )),
            Expanded(
              flex: 3,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new RaisedButton(
                        onPressed: () {
                          setState(() {
                            selectedWeight = WeightType.Kg;
                            strWeight = 'Kg';
                          });
                        },
                        child: Text(
                          'KG',
                          style: TextStyle(
                            color: selectedWeight == WeightType.Kg
                                ? Colors.white
                                : Colors.purple,
                          ),
                        ),
                        color: selectedWeight == WeightType.Kg
                            ? kActiveCardColor
                            : kInActiveCardColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.transparent)),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: Colors.transparent,
                        height: 30,
                        width: 100,
                        child: TextField(
                          onChanged: (value) {
                            weight = int.parse(value);
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          textAlign: TextAlign.center,
                          style: kNormalLabelTextStyle,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '$strWeight',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Rajdhani",
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                WelcomePageButton(
                    buttonTitle: 'Next',
                    click: () {
                      if (weight != null) {
                        _updateWeight();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => afterSingUp_5()),
                        );
                      } else {
                        _showDialog();
                        print('tekrar');
                      }
                    },
                    buttonColor: kActiveCardColor)
              ],
            ))
          ],
        ),
      ),
    );
  }
}
