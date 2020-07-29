import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitappson/deneme.dart';
import 'package:fitappson/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitappson/home.dart';
import 'package:fitappson/more.dart';
import 'package:fitappson/add.dart';
import 'package:fitappson/exercises.dart';
import 'package:fitappson/settings.dart';

import 'Login_Page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitappson/home.dart';
import 'package:fitappson/more.dart';
import 'package:fitappson/add.dart';
import 'package:fitappson/exercises.dart';
import 'package:fitappson/settings.dart';

import 'Login_Page.dart';

class achievements extends StatefulWidget {
  @override
  _achievementsState createState() => _achievementsState();
}

class _achievementsState extends State<achievements> {
  int _selectedIndex = 0;

  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
//    getAchv();
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
        title: new Column(
          children: <Widget>[
            Text(
              "\tAchievements                             ",
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

      body: Achv != null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 65,
                                  height: 50,
                                  child: ClipRect(
                                    child: Image.asset(
                                      "images/${index + 1}.png",
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        Achv[index],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          fontFamily: 'Rajdhani',
                                          color: Colors.black.withOpacity(0.80),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: Achv.length,
                    ),
                  ),
                )
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Center(
                    child: Text('No Achievement'),
                  ),
                ),
              ],
            ),
      //Alt menü.
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
