import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'afterSingUp_3.dart';
import 'afterSingUp_4.dart';
import 'afterSingUp_5.dart';
import 'afterSingUp_Finish.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contants.dart';



class afterSingUp_6 extends StatefulWidget {
  @override
  _afterSingUp_6State createState() => _afterSingUp_6State();
}
int level = 2;
var vki;
String durum;
String monday;
String tuesday;
String wednesday;
String thursday;
String friday;
String saturday;
String sunday;

class _afterSingUp_6State extends State<afterSingUp_6> {

  final databaseReference = Firestore.instance;
  String _userEmail;


  _getUserAuthEmail() async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    setState(() {
      _userEmail = user.email;

      try {
        databaseReference
            .collection('profile')
            .document('$_userEmail')
            .updateData({'activityLevel': '$level'});
      } catch (e) {
        print(e.toString());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                child: Row(
                  children: <Widget>[
                    my_iconbutton(
                      iconImageName: 'images/back_icon.png',
                      click: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    AutoSizeText(
                      'What is your current activity level? ',
                      style: kBigLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        // Text(level.toString(), style: kLabelTextStyle),
                        Text('Inactive', style: kNormalLabelTextStyle),
                        Text('Middle', style: kNormalLabelTextStyle),
                        Text('Active', style: kNormalLabelTextStyle),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                trackHeight: 5,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 15.0),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 30.0)),
                            child: Slider(
                                divisions: 2,
                                value: level.toDouble(),
                                min: 1,
                                max: 3,
                                activeColor: Color(0xFF893796),
                                inactiveColor: Color(0xFF8D8E98),
                                onChanged: (double newValue) {
                                  setState(() {
                                    level = newValue.round();
                                    print('$level');
                                  });
                                }),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: CustomPaint(
                              size: Size(40, 40), painter: DrawTriangle()),
                        ),
                        Container(
                            child: Center(
                              child: AutoSizeText(
                                'I exercise occasionally, but I want to improve myself by doing more',
                                style: kNormalLabelTextStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            height: MediaQuery.of(context).size.width * 0.4,
                            width: MediaQuery.of(context).size.width * 0.8,
                            color: Colors.white),
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
                        buttonTitle: 'FINISH',
                        click: () {
                          _getUserAuthEmail();
                          vki = weight/pow((height/100),2);
                          print("$vki");
                          if(vki<18.5 && level==3){
                            //zayıf active
                            durum="You are under your ideal weight. As your activity level is active, we recommend you the following program :";
                            monday="20 min walking\nSome exercises";
                            tuesday="20 min walking\nSome exercises";
                            wednesday="Rest";
                            thursday="20 min walking\nSome exercises";
                            friday="20 min walking\nSome exercises";
                            saturday="Rest";
                            sunday="45 min walking";
                            Navigator.push(context, MaterialPageRoute(builder: (context) => afterSingUp_Finish()),);
                          }
                          else if(vki<18.5 && level==2){
                            //zayıf middle
                            durum="You are under your ideal weight. As your activity level is medium, we recommend you the following program :";
                            monday="15 min walking\nSome exercises";
                            tuesday="15 min walking\nSome exercises";
                            wednesday="Rest";
                            thursday="15 min walking\nSome exercises";
                            friday="15 min walking\nSome exercises";
                            saturday="Rest";
                            sunday="40 min walking";
                            Navigator.push(context, MaterialPageRoute(builder: (context) => afterSingUp_Finish()),);
                          }
                          else if(vki<18.5 && level==1){
                            //zayıf inactive
                            durum="You are under your ideal weight. As your activity level is inactive, we recommend you the following program :";
                            monday="10 min walking\nSome exercises";
                            tuesday="10 min walking\nSome exercises";
                            wednesday="Rest";
                            thursday="10 min walking\nSome exercises";
                            friday="10 min walking\nSome exercises";
                            saturday="Rest";
                            sunday="30 min walking";
                            Navigator.push(context, MaterialPageRoute(builder: (context) => afterSingUp_Finish()),);
                          }

                          else if(vki>=18.5 && vki<=25 && level==3){
                            //fit active
                            durum="You are at normal weight! As your activity level is active, we recommend you the following program :";
                            monday="20 min walking\nSome exercises";
                            tuesday="20 min walking\nSome exercises";
                            wednesday="Rest";
                            thursday="20 min walking\nSome exercises";
                            friday="20 min walking\nSome exercises";
                            saturday="Rest";
                            sunday="45 min walking";
                            Navigator.push(context, MaterialPageRoute(builder: (context) => afterSingUp_Finish()),);
                          }
                          else if(vki>=18.5 && vki<=25 && level==2){
                            //fit middle
                            durum="You are at normal weight! As your activity level is medium, we recommend you the following program :";
                            monday="20 min walking\nSome exercises";
                            tuesday="20 min walking\nSome exercises";
                            wednesday="Rest";
                            thursday="20 min walking\nSome exercises";
                            friday="20 min walking\nSome exercises";
                            saturday="Rest";
                            sunday="45 min walking";
                            Navigator.push(context, MaterialPageRoute(builder: (context) => afterSingUp_Finish()),);
                          }
                          else if(vki>=18.5 && vki<=25 && level==1){
                            //fit inactive
                            durum="You are at normal weight! As your activity level is inactive, we recommend you the following program :";
                            monday="15 min walking\nSome exercises";
                            tuesday="15 min walking\nSome exercises";
                            wednesday="Rest";
                            thursday="15 min walking\nSome exercises";
                            friday="15 min walking\nSome exercises";
                            saturday="Rest";
                            sunday="45 min walking";
                            Navigator.push(context, MaterialPageRoute(builder: (context) => afterSingUp_Finish()),);
                          }

                          else if(vki>=25 && vki<=30 && level==3){
                            //hafifsisman active
                            durum="You are slightly above your ideal weight. As your activity level is active, we recommend you the following program :";
                            monday="20 min walking\nSome exercises";
                            tuesday="20 min walking\nSome exercises";
                            wednesday="Rest";
                            thursday="20 min walking\nSome exercises";
                            friday="20 min walking\nSome exercises";
                            saturday="Rest";
                            sunday="45 min walking";
                            Navigator.push(context, MaterialPageRoute(builder: (context) => afterSingUp_Finish()),);
                          }
                          else if(vki>=25 && vki<=30 && level==2){
                            //hafifsisman middle
                            durum="You are slightly above your ideal weight. As your activity level is medium, we recommend you the following program :";
                            monday="20 min walking\nSome exercises";
                            tuesday="20 min walking\nSome exercises";
                            wednesday="Rest";
                            thursday="20 min walking\nSome exercises";
                            friday="20 min walking\nSome exercises";
                            saturday="Rest";
                            sunday="40 min walking";
                            Navigator.push(context, MaterialPageRoute(builder: (context) => afterSingUp_Finish()),);
                          }
                          else if(vki>=25 && vki<=30 && level==1){
                            //hafifsisman inactive
                            durum="You are slightly above your ideal weight. As your activity level is inactive, we recommend you the following program :";
                            monday="15 min walking\nSome exercises";
                            tuesday="15 min walking\nSome exercises";
                            wednesday="Rest";
                            thursday="15 min walking\nSome exercises";
                            friday="15 min walking\nSome exercises";
                            saturday="Rest";
                            sunday="30 min walking";
                            Navigator.push(context, MaterialPageRoute(builder: (context) => afterSingUp_Finish()),);
                          }

                          else if(vki>=30 && level==3){
                            //obez active
                            durum="You are far above your ideal weight. As your activity level is active, we recommend you the following program :";
                            monday="20 min walking\nSome exercises";
                            tuesday="20 min walking\nSome exercises";
                            wednesday="Rest";
                            thursday="20 min walking\nSome exercises";
                            friday="20 min walking\nSome exercises";
                            saturday="Rest";
                            sunday="45 min walking";
                            Navigator.push(context, MaterialPageRoute(builder: (context) => afterSingUp_Finish()),);
                          }
                          else if(vki>=30 &&  level==2){
                            //obez middle
                            durum="You are far above your ideal weight. As your activity level is medium, we recommend you the following program :";
                            monday="25 min walking\nSome exercises";
                            tuesday="25 min walking\nSome exercises";
                            wednesday="Rest";
                            thursday="25 min walking\nSome exercises";
                            friday="25 min walking\nSome exercises";
                            saturday="Rest";
                            sunday="35 min walking";
                            Navigator.push(context, MaterialPageRoute(builder: (context) => afterSingUp_Finish()),);
                          }
                          else if(vki>=30 && level==1){
                            //obez inactive
                            durum="You are far above your ideal weight. As your activity level is inactive, we recommend you the following program :";
                            monday="20 min walking\nSome exercises";
                            tuesday="20 min walking\nSome exercises";
                            wednesday="Rest";
                            thursday="20 min walking\nSome exercises";
                            friday="20 min walking\nSome exercises";
                            saturday="Rest";
                            sunday="30 min walking";
                            Navigator.push(context, MaterialPageRoute(builder: (context) => afterSingUp_Finish()),);
                          }
                        },

                        buttonColor: kActiveCardColor)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
