import 'package:fitappson/achievements.dart';
import 'package:fitappson/score.dart';
import 'package:flutter/cupertino.dart';
import 'package:fitappson/change_password.dart';
import 'package:flutter/material.dart';
import 'package:fitappson/exercises.dart';
import 'package:fitappson/settings.dart';
import 'package:fitappson/add.dart';
import 'Leaderboard.dart';
import 'home.dart';

class more extends StatefulWidget {
  @override
  _moreState createState() => _moreState();
}

class _moreState extends State<more> {
  int _selectedIndex = 0;
  final List<Widget> _children = [];
  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
            )
          ],
        ),
        title: new Column(
          children: <Widget>[
            Text(
              "                       More",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Rajdhani',
                color: Colors.black.withOpacity(0.67),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Spacer(flex: 1),
          Row(
            children: <Widget>[
              Spacer(flex: 1),
              Container(
                alignment: Alignment.center,
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => achievements()),
                    ),
                  },
                  color: Colors.purple,
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  elevation: 5.0,
                  splashColor: Colors.grey,
                  animationDuration: Duration(seconds: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30),
                  ),
                  child: Container(
                    width: 220,
                    height: 180,
                    child: Column(
                      children: <Widget>[
                        IconButton(
                            icon: Image.asset(
                              'images/achievements.png',
                            ),
                            iconSize: 140,
                            onPressed: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => achievements()),
                                  ),
                                }),
                        Spacer(flex: 1),
                        Text(
                          "Achievements",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Rajdhani',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
          Spacer(flex: 1),
          Row(
            children: <Widget>[
              Spacer(flex: 1),
              Container(
                alignment: Alignment.center,
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScoreLeaderBord()),
                    ),
                  },
                  color: Colors.purple,
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  elevation: 5.0,
                  splashColor: Colors.grey,
                  animationDuration: Duration(seconds: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30),
                  ),
                  child: Container(
                    width: 220,
                    height: 180,
                    child: Column(
                      children: <Widget>[
                        IconButton(
                            icon: Image.asset(
                              'images/scores.png',
                            ),
                            iconSize: 140,
                            onPressed: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ScoreLeaderBord()),
                                  ),
                                }),
                        Spacer(flex: 1),
                        Text(
                          "Leaderboard",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Rajdhani',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
          Spacer(flex: 1),
        ]),
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
