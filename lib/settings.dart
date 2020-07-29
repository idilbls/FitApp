import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitappson/Privacy.dart';
import 'package:fitappson/WelcomePage.dart';
import 'package:fitappson/help.dart';
import 'package:fitappson/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:fitappson/change_email.dart';
import 'package:fitappson/change_password.dart';
import 'package:flutter/material.dart';
import 'package:fitappson/home.dart';
import 'package:fitappson/add.dart';
import 'package:fitappson/exercises.dart';
import 'package:fitappson/s_change_email.dart';
import 'package:fitappson/more.dart';

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  int _selectedIndex = 0;
  final List<Widget> _children = [];

  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  _signOut() async {
    await _firebaseAuth.signOut();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Welcome()),
    );
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                );
              },
              color: Colors.transparent,
            )
          ],
        ),
        title: new Column(
          children: <Widget>[
            Text(
              "                     Settings",
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
      body: SingleChildScrollView(
        /*child: Container(
          alignment: Alignment.topCenter,
          width: 303,
          height: 330,
          margin: const EdgeInsets.all(10.0),
          padding: EdgeInsets.all(20.0),
          decoration: new BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.88),
            borderRadius: BorderRadius.circular(10.0),
          ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 15,
            ),
            Text(
              "            Account",
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: 'Rajdhani',
                color: Colors.black.withOpacity(0.80),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Card(
              color: Colors.white,
              elevation: 8.0,
              margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading:
                        Icon(Icons.vpn_key, size: 16, color: Colors.purple),
                    title: Text(
                      " Change Password",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'Rajdhani',
                        color: Colors.black.withOpacity(0.67),
                      ),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        size: 20, color: Colors.purple),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => change_password()),
                      );
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey.shade400,
                  ),
                  ListTile(
                    leading: Icon(Icons.alternate_email,
                        size: 16, color: Colors.purple),
                    title: Text(
                      " Change E-mail",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'Rajdhani',
                        color: Colors.black.withOpacity(0.67),
                      ),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        size: 20, color: Colors.purple),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => change_email()),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "            Settings",
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: 'Rajdhani',
                color: Colors.black.withOpacity(0.80),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Card(
              color: Colors.white,
              elevation: 8.0,
              margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading:
                        Icon(Icons.fingerprint, size: 16, color: Colors.purple),
                    title: Text(
                      " Privacy",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'Rajdhani',
                        color: Colors.black.withOpacity(0.67),
                      ),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        size: 20, color: Colors.purple),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Privacy()),
                      );
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey.shade400,
                  ),
                  ListTile(
                    leading: Icon(Icons.help, size: 16, color: Colors.purple),
                    title: Text(
                      " Help",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'Rajdhani',
                        color: Colors.black.withOpacity(0.67),
                      ),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        size: 20, color: Colors.purple),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => help()),
                      );
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey.shade400,
                  ),
                  SwitchListTile(
                    dense: true,
                    activeColor: Colors.purple,
                    value: true,
                    title: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(Icons.language,
                                size: 16, color: Colors.purple),
                          ),
                          TextSpan(
                            text: "             Notifications",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: 'Rajdhani',
                              color: Colors.black.withOpacity(0.67),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onChanged: (val) {},
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey.shade400,
                  ),
                  ListTile(
                    leading: Icon(Icons.cancel, size: 16, color: Colors.red),
                    title: Text(
                      " Log Out",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'Rajdhani',
                        color: Colors.red,
                      ),
                    ),
                    onTap: () {
                      //login pageye gidecek.
                      _signOut();
                    },
                  ),
                ],
              ),
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
