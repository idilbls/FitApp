import 'dart:math';

import 'package:fitappson/Login_Page.dart';
import 'package:fitappson/afterSingUp_3.dart';

import 'afterSingUp_4.dart';
import 'afterSingUp_6.dart';
import 'package:flutter/material.dart';
import 'contants.dart';

class afterSingUp_5 extends StatefulWidget {
  @override
  _afterSingUp_5State createState() => _afterSingUp_5State();
}

enum WeightType {
  Kg,
  Ibm,
}
WeightType selectedWeight = WeightType.Kg;
String strWeight = 'Kg';

class _afterSingUp_5State extends State<afterSingUp_5> {
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
                    iconImageName: 'images/back_icon.png',
                    click: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => afterSingUp_4()),
                      );
                    },
                  ),
                ),
              ],
            )),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'What is the weight you want to reach? ',
                      style: kBigLabelTextStyle,
                      textAlign: TextAlign.center,
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
                          keyboardType: TextInputType.number,
                          maxLength: 3,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => afterSingUp_6()),
                      );
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
