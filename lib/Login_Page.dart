import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:fitappson/home.dart';
import 'package:fitappson/leg.dart';
import 'package:fitappson/shoulder.dart';

import 'WelcomePage.dart';
import 'afterSingUp_1.dart';

import 'afterSingUp_6.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'contants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

final dbReference = Firestore.instance;
String email;
String name;
String gender;
String brith;
int Shouldercount;
int actvityLevel;
int height;
int weight;
String url;
int score;
int activityLevel;
double _bmi;

class Login_Page extends StatefulWidget {
  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  final _auth = FirebaseAuth.instance;

  String password;
  bool showSpinner = false;
  @override
  bool checkBoxState = false;

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: AssetImage('images/Login_back.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.transparent,
                    width: 600,
                    height: 400,
                    child: Card(
                      margin: EdgeInsets.all(20),
                      color: Color.fromARGB(7, 70, 70, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Log In",
                            style: kLabelTextStyle,
                          ),
                          TextField_CreateAccount(
                            onChangeValue: (value) {
                              email = value;
                            },
                            inputType: TextInputType.emailAddress,
                            fildText: ' E-mail',
                            textSEE: false,
                            TextFieldColor: Colors.white,
                            marginTop: 60,
                          ),
                          TextField_CreateAccount(
                            onChangeValue: (value) {
                              password = value;
                            },
                            inputType: TextInputType.emailAddress,
                            fildText: 'Password',
                            TextFieldColor: Colors.white,
                            marginTop: 20,
                            textSEE: true,
                          ),
                          //TEXTFİELD E YAZILAN KISIM KAYDEDİLİYOR
                          SizedBox(
                            height: 15.0,
                          ),

                          WelcomePageButton(
                            buttonTitle: "Log in",
                            click: () async {
                              setState(() {
                                showSpinner = true;
                              });

                              try {
                                final _user =
                                    await _auth.signInWithEmailAndPassword(
                                        email: email, password: password);

                                if (_user != null) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => home()),
                                  );
                                }
                              } catch (e) {
                                print(e);

                                setState(() {
                                  showSpinner = false;
                                });
                              }
                            },
                            //EGER KULLANICI SİSTEMDE KAYITLIYSA KONTROL EDİYOR ŞİFRE İLE EŞLEŞİYORSA  HOME SAYFASINA AKTRARILIYOR
                            buttonColor: Color(0XFF2884DA),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
