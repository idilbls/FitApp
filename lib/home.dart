import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitappson/Leaderboard.dart';

import 'package:fitappson/achievements.dart';
import 'package:fitappson/add.dart';
import 'package:fitappson/arm.dart';
import 'package:fitappson/arm_6.dart';
import 'package:fitappson/back_9.dart';
import 'package:fitappson/chest_8.dart';
import 'package:fitappson/createAccountPage_1.dart';
import 'package:fitappson/deneme.dart';
import 'package:fitappson/exercises.dart';
import 'package:fitappson/home.dart';
import 'package:fitappson/leg_8.dart';
import 'package:fitappson/more.dart';

import 'package:fitappson/profile_Page.dart';

import 'package:fitappson/score.dart';
import 'package:fitappson/settings.dart';
import 'Login_Page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'contants.dart';

int shoulderValue;
int armValue;
int backValue;
int sixPackValue;
int chestValue;
int legValue;
int walkingValue;
List Achv = [];
//home page kısmında alınan array Achv ye eşitlenir

int AchvLenght;

getData() async {
  if (email != null) {
    await dbReference
        .collection("profile")
        .where("e-mail", isEqualTo: email)
        .getDocuments()
        .then((QuerySnapshot snapshot) {
//      snapshot.documents.forEach((f) => print('${f.data}}'));
      snapshot.documents.forEach((profileData) {
        shoulderValue = profileData.data["shoulder"];
        armValue = profileData.data["arm"];
        backValue = profileData.data["back"];
        sixPackValue = profileData.data["sixpack"];
        chestValue = profileData.data["chest"];
        legValue = profileData.data["leg"];
        walkingValue = profileData.data["walking"];
        Achv = profileData.data["achv"];
        score = profileData.data["score"];
        gender = profileData.data["gender"];
        url = profileData.data["photoUrl"];
        name = profileData.data["name"];
        score = profileData.data["score"];
        height = profileData.data['height'];
        weight = profileData.data["weight"];
        actvityLevel = profileData.data["activityLevel"];
      });
    });
  } else {
    email = creatAccount_email;
    await dbReference
        .collection("profile")
        .where("e-mail", isEqualTo: creatAccount_email)
        .getDocuments()
        .then((QuerySnapshot snapshot) {
      snapshot.documents.forEach((profileData) {
        gender = profileData.data["gender"];
        url = profileData.data["photoUrl"];
        name = profileData.data["name"];
        height = profileData.data['height'];
        weight = profileData.data["weight"];
        actvityLevel = profileData.data["activityLevel"];
        shoulderValue = profileData.data["shoulder"];
        armValue = profileData.data["arm"];
        backValue = profileData.data["back"];
        sixPackValue = profileData.data["sixpack"];
        chestValue = profileData.data["chest"];
        legValue = profileData.data["leg"];
        walkingValue = profileData.data["walking"];
        score = profileData.data["score"];
        url = profileData.data["photoUrl"];
        name = profileData.data["name"];
        score = profileData.data["score"];
        height = profileData.data['height'];
        weight = profileData.data["weight"];
        actvityLevel = profileData.data["activityLevel"];
        Achv = profileData.data["achv"];
      });
    });
  }
}

getAchvLengt() {
  if (Achv == null) {
    AchvLenght = 0;
  } else {
    AchvLenght = Achv.length;
  }
  print('$AchvLenght');
}

//giriş yapılan kullanıcı bu sayfaya nerden geldigi kontrol ediliyor öncelikle eger loginden giriş yapıldıysa email ile bilgiler çekiliyor .Eger creatAcount yapıldıysa creatAcounttan bilgiler çekiliyor.
//tüm kullanıcı bilgileri eşitleniyor.
class Circle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getAchvLengt();
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  ' Excuses do not burn calories. Do sport.',
                  style: TextStyle(
                    fontFamily: 'Dancing Script',
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(flex: 1),
                IconButton(
                  icon: Image.asset('images/sport.png'),
                  onPressed: null,
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '  Do not forget to drink water.',
                  style: TextStyle(
                      fontFamily: 'Dancing Script',
                      fontSize: 15,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                Spacer(flex: 1),
                IconButton(
                  icon: Image.asset('images/water.png'),
                  onPressed: null,
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  ' Meditate and rest your soul.',
                  style: TextStyle(
                    fontFamily: 'Dancing Script',
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(flex: 1),
                IconButton(
                  icon: Image.asset('images/yoga.png'),
                  onPressed: null,
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '  Eat healthy.',
                  style: TextStyle(
                      fontFamily: 'Dancing Script',
                      fontSize: 15,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                Spacer(flex: 1),
                IconButton(
                  icon: Image.asset('images/eat.png'),
                  onPressed: null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class home extends StatefulWidget {
  @override
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int _selectedIndex = 0;
  int _index = 0;
  int photo;
  int levelint;
  var deneme;
  String userMail;

  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String _userEmail;

  final _fireStore = Firestore.instance;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    getData();
    getAchvLengt();
  }

  Widget build(BuildContext context) {
    getData();
    getAchvLengt();

    return Scaffold(
      body: StreamBuilder(
          stream: Firestore.instance
              .collection('profile')
              .document('$email')
              .snapshots(),
          builder: (context, snapshot) {
            getData();
            if (!snapshot.hasData) {
              return new Text("Loading");
            }
            var username = snapshot.data;

            var date = snapshot.data;
            var url = snapshot.data;
            return Container(
              child: SafeArea(
                  child: Column(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.1,
                                height: MediaQuery.of(context).size.height *
                                    0.15 *
                                    0.8,
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage:
                                      NetworkImage('${url["photoUrl"]}'),
                                  backgroundColor: Colors.transparent,
                                  child: my_Iconbutton_Profile(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height: MediaQuery.of(context).size.height *
                                        0.11 *
                                        0.8,
                                    click: () {
                                      getAchvLengt();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                profile_Page()),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          new Text(
                                            username["name"],
                                            style: kNormalLabelTextStyle,
                                            textAlign: TextAlign.center,
                                          ),
                                          new Text(
                                            date["score"].toString(),
                                            style: kNormalLabelTextStyle,
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                            Expanded(
                              flex: 1,
                              child: Ink(
                                decoration: const ShapeDecoration(
                                  color: Colors.transparent,
                                  shape: CircleBorder(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Most popular exercises.. Do sports together..',
                          style: TextStyle(
                              fontFamily: 'Dancing Script',
                              fontSize: 15,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.005,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => leg_8()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Card(
                              elevation: 6,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/Leg1/Squat.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Colors.purple,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Text(
                                            'Squat',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => arm_6()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Card(
                              elevation: 6,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('images/Arm1/Punches.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Text(
                                            'Punches',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => back_9()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Card(
                              elevation: 6,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'images/Back1/Deadlifts.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Text(
                                            'Deadlifts',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => chest_8()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Card(
                              elevation: 6,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'images/Chest1/Arm_scissors.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Text(
                                            'Arm Scissors',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.005,
                  ),
                  Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Circle(),
                  )
                ],
              )),
            );
          }),
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
