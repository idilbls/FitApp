import 'dart:math';

import 'package:fitappson/exercises.dart';
import 'package:fitappson/more.dart';
import 'package:fitappson/profile_settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitappson/settings.dart';
import 'package:intl/intl.dart';
import 'Login_Page.dart';
import 'achievements.dart';
import 'add.dart';
import 'home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'afterSingUp_Finish.dart';
import 'afterSingUp_6.dart';
import 'contants.dart';

String stas;

class profile_Page extends StatefulWidget {
  @override
  _profile_PageState createState() => _profile_PageState();
}

class _profile_PageState extends State<profile_Page> {
  DateTime _currentdate = new DateTime.now();

  List<String> images = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
    'images/4.png',
    'images/5.png',
  ];
  final List<Widget> _children = [];

  int _selectedIndex = 0;

  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String _dateFormat = new DateFormat('EEEE').format(_currentdate);
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      body: Container(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.075,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    my_iconbutton(
                      iconsize: null,
                      iconBackgrundColor: null,
                      iconImageName: 'images/back_icon.png',
                      click: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => home()),
                        );
                      },
                    ),
                    Text(
                      'Profile',
                      style: kNormalLabelTextStyle,
                    ),
                    my_iconbutton(
                      iconImageName: 'images/settings.png',
                      iconBackgrundColor: Colors.purple,
                      click: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => profile_settings()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: NetworkImage('$url'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text(
                                "$name",
                                style: kNormalLabelTextStyle,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Ink(
                                    decoration: ShapeDecoration(
                                      color: Colors.transparent,
                                      shape: CircleBorder(),
                                    ),
                                    child: my_iconbutton(
                                        iconsize: null,
                                        click: null,
                                        iconImageName: 'images/star.png',
                                        iconBackgrundColor: null)),
                              ],
                            ),
                            new Text(
                              "$score",
                              style: kNormalLabelTextStyle,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        my_iconbutton(
                            iconsize: null,
                            click: null,
                            iconImageName: 'images/height.png',
                            iconBackgrundColor: null),
                        Column(
                          children: <Widget>[
                            new Text(
                              "$height cm",
                              style: kSmallTextStyle,
                            ),
                            Text(
                              'height',
                              style: kSmallTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        my_iconbutton(
                            iconsize: null,
                            click: null,
                            iconImageName: 'images/weight.png',
                            iconBackgrundColor: null),
                        Column(
                          children: <Widget>[
                            new Text(
                              "$weight kg",
                              style: kSmallTextStyle,
                            ),
                            Text(
                              'weight',
                              style: kSmallTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: new EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: MediaQuery.of(context).size.height * 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            my_iconbutton_Big(
                              click: null,
                              iconImageName: 'images/goal.png',
                              iconBackgrundColor: Colors.green[100],
                              iconsize: MediaQuery.of(context).size.height *
                                  0.2 *
                                  0.4,
                            ),
                            Text(
                              '${AchvLenght}',
                              style: kBoldSmallTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            my_iconbutton_Big(
                              click: null,
                              iconImageName: 'images/exerciseTime.png',
                              iconBackgrundColor: Colors.red[100],
                              iconsize: MediaQuery.of(context).size.height *
                                  0.2 *
                                  0.4,
                            ),
                            Text(
                              'Walking Time :$walkingValue  min',
                              style: kBoldSmallTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: StreamBuilder(
                  stream: Firestore.instance.collection('exercise').snapshots(),
                  builder: (context, snapshot) {
                    vkiCalculation();
                    if (!snapshot.hasData)
                      return Text("Loading data.. Please wait..");
                    for (int i = 0; i <= 83; i++) {
                      if (_dateFormat == snapshot.data.documents[i]['day'] &&
                          stas == snapshot.data.documents[i]['category']) {
                        return Column(
                          children: <Widget>[
                            Container(
                              height: 10,
                            ),
                            Text(
                              "$_dateFormat's Schedule ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Rajdhani',
                                color: Colors.black54,
                              ),
                            ),
                            Container(
                              height: 10,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.85,
                              decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.5),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.directions_walk,
                                      size: 15, color: Colors.white),
                                  Text(
                                    snapshot.data.documents[i]['title'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      fontFamily: 'Rajdhani',
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.85,
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.accessibility_new,
                                      size: 15, color: Colors.black54),
                                  Text(
                                    snapshot.data.documents[i]['ex_1'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      fontFamily: 'Rajdhani',
                                      color: Colors.black54,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.85,
                              decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.5),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.fitness_center,
                                      size: 15, color: Colors.white),
                                  Text(
                                    snapshot.data.documents[i]['ex_2'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      fontFamily: 'Rajdhani',
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.85,
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.accessibility,
                                      size: 15, color: Colors.black54),
                                  Text(
                                    snapshot.data.documents[i]['ex_3'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      fontFamily: 'Rajdhani',
                                      color: Colors.black54,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }
                    }
                    return (Text('Returnmuş'));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(74, 70, 70, 80),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: changePage,
          iconSize: 35,
          fixedColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Image.asset(
                  'images/home.png',
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => home()),
                  ),
                },
                color: Colors.transparent,
              ),
              title: SizedBox(
                height: 0,
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Image.asset(
                  'images/menu.png',
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => more()),
                  ),
                },
                color: Colors.transparent,
              ),
              title: SizedBox(
                height: 0,
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Image.asset(
                  'images/plus.png',
                  width: 50,
                  height: 50,
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => add()),
                  ),
                },
                color: Colors.transparent,
              ),
              title: SizedBox(
                height: 0,
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Image.asset(
                  'images/dumbbell.png',
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => exercises()),
                  ),
                },
                color: Colors.transparent,
              ),
              title: SizedBox(
                height: 0,
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Image.asset(
                  'images/settings_active.png',
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => settings()),
                  ),
                },
                color: Colors.transparent,
              ),
              title: SizedBox(
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void vkiCalculation() {
    var vki = weight / pow((height / 100), 2);
    if (vki < 18.5 && level == 3)
      stas = "zayıf-active";
    else if (vki < 18.5 && level == 2)
      stas = "zayıf-middle";
    else if (vki < 18.5 && level == 1)
      stas = "zayıf-inactive";
    else if (vki >= 18.5 && vki <= 25 && level == 3)
      stas = "fit-active";
    else if (vki >= 18.5 && vki <= 25 && level == 2)
      stas = "fit-middle";
    else if (vki >= 18.5 && vki <= 25 && level == 1)
      stas = "fit-inactive";
    else if (vki >= 25 && vki <= 30 && level == 3)
      stas = "hafifsisman-active";
    else if (vki >= 25 && vki <= 30 && level == 2)
      stas = "hafifsisman-middle";
    else if (vki >= 25 && vki <= 30 && level == 1)
      stas = "hafifsisman-inactive";
    else if (vki >= 30 && level == 3)
      stas = "obez-active";
    else if (vki >= 30 && level == 2)
      stas = "obez-middle";
    else if (vki >= 30 && level == 1) stas = "obez-inactive";
  }
}
