import 'package:auto_size_text/auto_size_text.dart';
import 'afterSingUp_Finish.dart';
import 'Login_Page.dart';
import 'home.dart';
import 'profile_Page.dart';
import 'package:flutter/material.dart';
import 'afterSingUp_Finish.dart';
import 'contants.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

enum Time {
  week,
  month,
  allTime,
}
Time selectedTime = Time.week;

class progress_Page extends StatefulWidget {
  @override
  _progress_PageState createState() => _progress_PageState();
}

class _progress_PageState extends State<progress_Page> {
  int _selectedIndex = 0;
  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      body: Container(
        child: SafeArea(
            child: ListView(
              children: <Widget>[
                Column(
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
                                MaterialPageRoute(builder: (context) => home()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: my_Iconbutton_Profile(
                                  width: MediaQuery.of(context).size.width * 0.1,
                                  height:
                                  (MediaQuery.of(context).size.height * 0.15) *
                                      0.60,
                                  click: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => profile_Page()),
                                    );
                                  },
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      ' Sandra Mason',
                                      style: kNormalLabelTextStyle,
                                      textAlign: TextAlign.center,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.purple,
                                        ),
                                        Text(
                                          'Los - Angeles',
                                          style: kNormalLabelTextStyle,
                                        ),
                                      ],
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
                                  Text(
                                    '200',
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
                                  Text(
                                    '168 cm',
                                    style: kBoldSmallTextStyle,
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
                                  Text(
                                    '66 Kg',
                                    style: kBoldSmallTextStyle,
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
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20)),
                      height: MediaQuery.of(context).size.height * 0.65,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: 15,
                                ),
                                AutoSizeText(
                                  'Activity',
                                  style: kNormalLabelTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20)),
                            height: MediaQuery.of(context).size.height * 0.6 * 0.12,
                            width: MediaQuery.of(context).size.width * 0.9 * 0.9,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        kSizechoseeButton(
                                          buttonTitle: 'WEEK',
                                          click: () {
                                            setState(() {
                                              selectedTime = Time.week;
                                            });
                                          },
                                          buttonColor: selectedTime == Time.week
                                              ? kButtonColorPurple
                                              : kInActiveCardColor,
                                          TextColor: selectedTime == Time.week
                                              ? Colors.white
                                              : Colors.black,
                                          width: MediaQuery.of(context).size.width *
                                              0.9 *
                                              0.9,
                                          height: MediaQuery.of(context).size.height *
                                              0.6 *
                                              0.12,
                                        ),
                                      ],
                                    )),
                                Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        kSizechoseeButton(
                                          buttonTitle: 'MONTH',
                                          click: () {
                                            setState(() {
                                              selectedTime = Time.month;
                                            });
                                          },
                                          buttonColor: selectedTime == Time.month
                                              ? kButtonColorPurple
                                              : kInActiveCardColor,
                                          TextColor: selectedTime == Time.month
                                              ? Colors.white
                                              : Colors.black,
                                          width: MediaQuery.of(context).size.width *
                                              0.9 *
                                              0.9,
                                          height: MediaQuery.of(context).size.height *
                                              0.6 *
                                              0.12,
                                        ),
                                      ],
                                    )),
                                Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        kSizechoseeButton(
                                          buttonTitle: 'ALL TIME',
                                          click: () {
                                            setState(() {
                                              selectedTime = Time.allTime;
                                            });
                                          },
                                          buttonColor: selectedTime == Time.allTime
                                              ? kButtonColorPurple
                                              : kInActiveCardColor,
                                          TextColor: selectedTime == Time.allTime
                                              ? Colors.white
                                              : Colors.black,
                                          width: MediaQuery.of(context).size.width *
                                              0.9 *
                                              0.9,
                                          height: MediaQuery.of(context).size.height *
                                              0.6 *
                                              0.12,
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.6 * 0.05,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0XFFE5E5E5),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20)),
                            height: MediaQuery.of(context).size.height * 0.6 * 0.43,
                            width: MediaQuery.of(context).size.width * 0.9 * 0.9,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.6 * 0.05,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0XFFE5E5E5),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      child: AutoSizeText(
                                        'Daily Calories',
                                        textAlign: TextAlign.start,
                                        style: kNormalLabelTextStyle,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      width:
                                      MediaQuery.of(context).size.width * 0.3,
                                    ),
                                    Container(
                                      child: AutoSizeText(
                                        '1300 KCAL',
                                        textAlign: TextAlign.start,
                                        style: kNormalLabelTextStyle,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      width:
                                      MediaQuery.of(context).size.width * 0.3,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      child: AutoSizeText(
                                        'Trainings',
                                        textAlign: TextAlign.start,
                                        style: kNormalLabelTextStyle,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      width:
                                      MediaQuery.of(context).size.width * 0.3,
                                    ),
                                    Container(
                                      child: AutoSizeText(
                                        '2 / WEEK',
                                        textAlign: TextAlign.start,
                                        style: kNormalLabelTextStyle,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      width:
                                      MediaQuery.of(context).size.width * 0.3,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      child: AutoSizeText(
                                        'Exercise Time',
                                        textAlign: TextAlign.start,
                                        style: kNormalLabelTextStyle,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      width:
                                      MediaQuery.of(context).size.width * 0.3,
                                    ),
                                    Container(
                                      child: AutoSizeText(
                                        '20 SEC',
                                        textAlign: TextAlign.start,
                                        style: kNormalLabelTextStyle,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      width:
                                      MediaQuery.of(context).size.width * 0.3,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      child: AutoSizeText(
                                        'Goal',
                                        textAlign: TextAlign.start,
                                        style: kNormalLabelTextStyle,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      width:
                                      MediaQuery.of(context).size.width * 0.3,
                                    ),
                                    Container(
                                      child: AutoSizeText(
                                        '52 KG',
                                        textAlign: TextAlign.start,
                                        style: kNormalLabelTextStyle,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      width:
                                      MediaQuery.of(context).size.width * 0.3,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            height: MediaQuery.of(context).size.height * 0.6 * 0.31,
                            width: MediaQuery.of(context).size.width * 0.9 * 0.9,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
      bottomNavigationBar: Container(
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(74, 70, 70, 80),
          ),
          child: Container(
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
                        MaterialPageRoute(
                            builder: (context) => afterSingUp_Finish()),
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
                        MaterialPageRoute(
                            builder: (context) => afterSingUp_Finish()),
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
                        MaterialPageRoute(
                            builder: (context) => progress_Page()),
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
                        MaterialPageRoute(
                            builder: (context) => afterSingUp_Finish()),
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
                        MaterialPageRoute(
                            builder: (context) => afterSingUp_Finish()),
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
        ),
      ),
    );
  }
}
