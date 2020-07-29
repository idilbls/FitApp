import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:fitappson/shoulder.dart';
import 'package:flutter/material.dart';
import 'package:fitappson/home.dart';
import 'package:fitappson/add.dart';
import 'package:fitappson/exercises.dart';
import 'package:fitappson/settings.dart';
import 'package:intl/intl.dart';
import 'package:fitappson/more.dart';

import 'Login_Page.dart';
import 'afterSingUp_1.dart';
import 'home.dart';

String achievement;

int Walking=0;

int WalkingSum=0;

bool ShoulderExercises = false;

bool ArmExercises = false;

bool BackExercises = false;

bool SixPackExercises = false;

bool ChestExercises = false;

bool LegExercises = false;

String _statusSel;

List<String> achievementsList;

class add extends StatefulWidget {
  @override
  _addState createState() => _addState();
}

class _addState extends State<add> {
  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Congratulations ",
              textAlign: TextAlign.center,
            ),
            content: SingleChildScrollView(
              child: Column(children: <Widget>[
                IconButton(
                  icon: Image.asset('images/star.png'),
                  iconSize: 100,
                ),
                Text(" You've won success!"),
              ]),
            ),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text("Back"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }


//read current date
  DateTime _currentdate = new DateTime.now();

  int _selectedIndex = 0;
  final List<Widget> _children = [];
  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<DropdownMenuItem<String>> _dropDownMenuItems;

  List<DropdownMenuItem<String>> _getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();

    items.add(new DropdownMenuItem(value: '1', child: new Text('5 min')));
    items.add(new DropdownMenuItem(value: '2', child: new Text('10 min')));
    items.add(new DropdownMenuItem(value: '3', child: new Text('15 min')));
    items.add(new DropdownMenuItem(value: '4', child: new Text('20 min')));
    items.add(new DropdownMenuItem(value: '5', child: new Text('25 min')));
    items.add(new DropdownMenuItem(value: '6', child: new Text('30 min')));
    items.add(new DropdownMenuItem(value: '7', child: new Text('35 min')));
    items.add(new DropdownMenuItem(value: '8', child: new Text('40 min')));
    items.add(new DropdownMenuItem(value: '9', child: new Text('45 min')));
    items.add(new DropdownMenuItem(value: '10', child: new Text('50 min')));
    items.add(new DropdownMenuItem(value: '11', child: new Text('55 min')));
    items.add(new DropdownMenuItem(value: '12', child: new Text('60 min')));
    return items;
  }

  void changedDropDownItem(String selectedItem) {
    setState(() {
      _statusSel = selectedItem;
    });
  }

  @override
  void initState() {
    _dropDownMenuItems = _getDropDownMenuItems();
    _statusSel = _dropDownMenuItems[0].value;

//    super.initState();
//
//    getVariable();
  }

  @override
  Widget build(BuildContext context) {
    String _formattdate = new DateFormat.yMMMd().format(_currentdate);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0XFFE5E5E5),
      appBar: new AppBar(
        backgroundColor: Color(0XFFE5E5E5),
        elevation: 0,
        leading: new Column(
          children: <Widget>[
            new IconButton(
              icon: Image.asset(
                'images/back_icon.png',
              ),
              onPressed: () => {
                Navigator.pop(context),
              },
              color: Colors.transparent,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 20,
                  height: 70,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 303,
                  height: 70,
                  margin: const EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(20.0),
                  decoration: new BoxDecoration(
                    color: Colors.white.withOpacity(0.37),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.add_box, size: 30, color: Colors.purple),
                      Container(
                        width: 15,
                        alignment: Alignment.topCenter,
                      ),
                      Text(
                        "Come on, Add your activities!",
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Rajdhani',
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 20,
            ),
            Center(
              child: Text(
                '$_formattdate',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  fontFamily: 'Rajdhani',
                  color: Colors.black.withOpacity(0.80),
                ),
              ),
            ),
            Container(
              height: 20,
            ),
            Text(
              '         Today Tasks',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'Rajdhani',
                color: Colors.purple,
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              width: double.infinity,
              height: 1.0,
              color: Colors.grey.shade400,
            ),
            Row(
              children: <Widget>[
                Text(
                  "           Walking",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Rajdhani',
                    color: Colors.black.withOpacity(0.67),
                  ),
                ),
                Container(
                  width: 135,
                ),
                Container(
                  color: Colors.transparent,
                  height: 50,
                  width: 50,
                  child: TextField(
                    onChanged: (value) {
                      Walking = int.parse(value);
                    },
                    textInputAction: TextInputAction.done,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'Rajdhani',
                      color: Colors.purple,
                    ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 2,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child:Text(
                  "  Min",

                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Rajdhani',
                    color: Colors.purple,
                  ),
                ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              width: double.infinity,
              height: 1.0,
              color: Colors.grey.shade400,
            ),
            Container(
              height: 20,
            ),
            Text(
              '         Exercises',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'Rajdhani',
                color: Colors.purple,
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: double.infinity,
              height: 1.0,
              color: Colors.grey.shade400,
            ),
            Row(
              children: <Widget>[
                Text(
                  "           Shoulder Exercises",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Rajdhani',
                    color: Colors.black.withOpacity(0.67),
                  ),
                ),
                Container(
                  width: 130,
                ),
                Checkbox(
                  value: ShoulderExercises,
                  onChanged: (bool value) {
                    setState(() {
                      ShoulderExercises = value;
                    });
                  },
                  activeColor: Colors.purple,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: double.infinity,
              height: 1.0,
              color: Colors.grey.shade400,
            ),
            Row(
              children: <Widget>[
                Text(
                  "           Arm Exercises",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Rajdhani',
                    color: Colors.black.withOpacity(0.67),
                  ),
                ),
                Container(
                  width: 162,
                ),
                Checkbox(
                  value: ArmExercises,
                  onChanged: (bool value) {
                    setState(() {
                      ArmExercises = value;
                    });
                  },
                  activeColor: Colors.purple,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: double.infinity,
              height: 1.0,
              color: Colors.grey.shade400,
            ),
            Row(
              children: <Widget>[
                Text(
                  "           Six Pack Exercises",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Rajdhani',
                    color: Colors.black.withOpacity(0.67),
                  ),
                ),
                Container(
                  width: 133,
                ),
                Checkbox(
                  value: SixPackExercises,
                  onChanged: (bool value) {
                    setState(() {
                      SixPackExercises = value;
                    });
                  },
                  activeColor: Colors.purple,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: double.infinity,
              height: 1.0,
              color: Colors.grey.shade400,
            ),
            Row(
              children: <Widget>[
                Text(
                  "           Leg Exercises",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Rajdhani',
                    color: Colors.black.withOpacity(0.67),
                  ),
                ),
                Container(
                  width: 164,
                ),
                Checkbox(
                  value: LegExercises,
                  onChanged: (bool value) {
                    setState(() {
                      LegExercises = value;
                    });
                  },
                  activeColor: Colors.purple,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: double.infinity,
              height: 1.0,
              color: Colors.grey.shade400,
            ),
            Row(
              children: <Widget>[
                Text(
                  "           Chest Exercises",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Rajdhani',
                    color: Colors.black.withOpacity(0.67),
                  ),
                ),
                Container(
                  width: 150,
                ),
                Checkbox(
                  value: ChestExercises,
                  onChanged: (bool value) {
                    setState(() {
                      ChestExercises = value;
                    });
                  },
                  activeColor: Colors.purple,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: double.infinity,
              height: 1.0,
              color: Colors.grey.shade400,
            ),
            Row(
              children: <Widget>[
                Text(
                  "           Back Exercises",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Rajdhani',
                    color: Colors.black.withOpacity(0.67),
                  ),
                ),
                Container(
                  width: 157,
                ),
                Checkbox(
                  value: BackExercises,
                  onChanged: (bool value) {
                    setState(() {
                      BackExercises = value;
                    });
                  },
                  activeColor: Colors.purple,
                ),
              ],
            ),
            Container(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 135,
                ),
                RaisedButton(
                  padding: EdgeInsets.all(10.0),
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    print('$shoulderValue');
                    print('$Walking');
                    print('$legValue');

                    if(Walking!=null){
                       WalkingSum = Walking + WalkingSum;
                       databaseReference
                           .collection('profile')
                           .document('$email')
                           .updateData({'walking': WalkingSum});
                       if(WalkingSum >0  && WalkingSum <=15){
                         createAlertDialog(context);
                         score = (score + 5) * 2;
                         databaseReference
                             .collection('profile')
                             .document('$email')
                             .updateData({
                           'achv': FieldValue.arrayUnion(
                               ["Good Start!"]),
                           'score': score
                         });
                         achievementsList.add("Good Start!");
                       }// walking 0-15 min

                       else if(WalkingSum >15  && WalkingSum <=45){
                      createAlertDialog(context);
                      score = (score + 5) * 2;
                      databaseReference
                          .collection('profile')
                          .document('$email')
                          .updateData({
                        'achv': FieldValue.arrayUnion(
                            ["Steps on the way to the goal"]),
                        'score': score
                      });
                      achievementsList.add("Steps on the way to the goal");
                    }// walking 15-45 min

                       else if(WalkingSum >45  && WalkingSum <=60){
                         createAlertDialog(context);
                         score = (score + 5) * 2;
                         databaseReference
                             .collection('profile')
                             .document('$email')
                             .updateData({
                           'achv': FieldValue.arrayUnion(
                               ["More than 45 minutes a day!"]),
                           'score': score
                         });
                         achievementsList.add("More than 45 minutes a day!");
                       }// walking 45-60 min

                       else if(WalkingSum >60  && WalkingSum <=90){
                       createAlertDialog(context);
                       score = (score + 5) * 2;
                       databaseReference
                           .collection('profile')
                           .document('$email')
                           .updateData({
                         'achv': FieldValue.arrayUnion(
                             ["You are too fast!"]),
                         'score': score
                       });
                       achievementsList.add("You are too fast!");
                    }// walking 60-90 min

                       else if(WalkingSum >90  && WalkingSum <=240){
                         createAlertDialog(context);
                         score = (score + 5) * 2;
                         databaseReference
                             .collection('profile')
                             .document('$email')
                             .updateData({
                           'achv': FieldValue.arrayUnion(
                               ["King of Walking"]),
                           'score': score
                         });
                         achievementsList.add("King of Walking");
                       }// walking 90-240 min

                  }



                    if (ShoulderExercises == true) {
                      shoulderValue = shoulderValue + 1;

                      databaseReference
                          .collection('profile')
                          .document('$email')
                          .updateData({'shoulder': shoulderValue});

                      if (shoulderValue == 1) {
                        createAlertDialog(context);
                        score = (score + 5) * 2;
                        databaseReference
                            .collection('profile')
                            .document('$email')
                            .updateData({
                          'achv': FieldValue.arrayUnion(
                              ["First Shoulder Exercises"]),
                          'score': score
                        });

                        achievementsList.add("First Shoulder Exercises");
                      } //first shoulder exercises
                      else if (shoulderValue == 5) {
                        createAlertDialog(context);
                        score = (score + 5) * 2;
                        databaseReference
                            .collection('profile')
                            .document('$email')
                            .updateData({
                          'achv': FieldValue.arrayUnion(
                              ["King Of Shoulder Exercises"]),
                          'score': score
                        });

                        achievementsList.add("King Of Shoulder Exercises");
                      } //king of shoulder exercises
                    }
                    if (ArmExercises == true) {
                      armValue = armValue + 1;

                      databaseReference
                          .collection('profile')
                          .document('$email')
                          .updateData({'arm': armValue});

                      if (armValue == 1) {
                        createAlertDialog(context);
                        score = (score + 5) * 2;
                        databaseReference
                            .collection('profile')
                            .document('$email')
                            .updateData({
                          'achv':
                              FieldValue.arrayUnion(["First Arm Exercises"]),
                          'score': score
                        });
                        achievementsList.add("First Arm Exercises");
                        createAlertDialog(context);
                      } else if (armValue == 5) {
                        createAlertDialog(context);
                        score = (score + 5) * 2;
                        databaseReference
                            .collection('profile')
                            .document('$email')
                            .updateData({
                          'achv':
                              FieldValue.arrayUnion(["King Of Arm Exercises"]),
                          'score': score
                        });
                        achievementsList.add("King Of Arm Exercises");
                      }
                    }
                    if (SixPackExercises == true) {
                      sixPackValue = sixPackValue + 1;

                      databaseReference
                          .collection('profile')
                          .document('$email')
                          .updateData({'sixpack': sixPackValue});

                      if (sixPackValue == 1) {
                        createAlertDialog(context);
                        score = (score + 5) * 2;
                        databaseReference
                            .collection('profile')
                            .document('$email')
                            .updateData({
                          'achv': FieldValue.arrayUnion(
                              ["First Six Pack Exercises"]),
                          'score': score
                        });
                        achievementsList.add("First Six Pack Exercises");

                        createAlertDialog(context);
                      } else if (sixPackValue == 5) {
                        createAlertDialog(context);
                        score = (score + 5) * 2;
                        databaseReference
                            .collection('profile')
                            .document('$email')
                            .updateData({
                          'achv': FieldValue.arrayUnion(
                              ["King Of Six Pack Exercises"]),
                          'score': score
                        });

                        achievementsList.add("King Of Six Pack Exercises");
                        createAlertDialog(context);
                      }
                    }
                    if (LegExercises == true) {
                      legValue = legValue + 1;

                      databaseReference
                          .collection('profile')
                          .document('$email')
                          .updateData({'leg': legValue});

                      if (legValue == 1) {
                        createAlertDialog(context);
                        databaseReference
                            .collection('profile')
                            .document('$email')
                            .updateData({
                          'achv':
                              FieldValue.arrayUnion(["First Leg Exercises"]),
                          'score': score
                        });
                        achievementsList.add("First Leg Exercises");
                      } else if (legValue == 5) {
//                        achievementsList.add("King Of Leg Exercises");
                        createAlertDialog(context);
                        databaseReference
                            .collection('profile')
                            .document('$email')
                            .updateData({
                          'achv':
                              FieldValue.arrayUnion(["King Of Leg Exercises"]),
                          'score': score
                        });
                      }
                    }
                    if (ChestExercises == true) {
                      chestValue = chestValue + 1;
                      databaseReference
                          .collection('profile')
                          .document('$email')
                          .updateData({'chest': chestValue});
                      if (chestValue == 1) {
                        createAlertDialog(context);
                        score = (score + 5) * 2;
                        databaseReference
                            .collection('profile')
                            .document('$email')
                            .updateData({
                          'achv':
                              FieldValue.arrayUnion(["First Chest Exercises"]),
                          'score': score
                        });
                        achievementsList.add("First Chest Exercises");
                      } else if (chestValue == 5) {
                        if (chestValue == 1) {
                          createAlertDialog(context);
                          score = (score + 5) * 2;
                          databaseReference
                              .collection('profile')
                              .document('$email')
                              .updateData({
                            'achv': FieldValue.arrayUnion(
                                ["King Of Chest Exercises"]),
                            'score': score
                          });
                          achievementsList.add("King Of Chest Exercises");
                        }
                      }
                      if (BackExercises == true) {
                        databaseReference
                            .collection('profile')
                            .document('$email')
                            .updateData({'back': backValue});
                        backValue = backValue + 1;
                        if (backValue == 1) {
                          createAlertDialog(context);
                          score = (score + 5) * 2;
                          databaseReference
                              .collection('profile')
                              .document('$email')
                              .updateData({
                            'achv':
                                FieldValue.arrayUnion(["First Back Exercises"])
                          });
                          achievementsList.add("First Back Exercises");
                        } else if (backValue == 5) {
                          createAlertDialog(context);
                          score = (score + 5) * 2;
                          databaseReference
                              .collection('profile')
                              .document('$email')
                              .updateData({
                            'achv': FieldValue.arrayUnion(
                                ["King Of Back Exercises"])
                          });
                          achievementsList.add("King Of Exercises");
                        }
                      }
                    }
                  },
                  child: Container(
                    width: 40,
                    height: 30,
                    child: Center(
                      child: Text(
                        "Save",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: 'Rajdhani',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  color: Colors.purple,
                ),
              ],
            ),
            Container(
              height: 30,
            ),
          ],
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
}
