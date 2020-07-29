import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitappson/settings.dart';
import 'package:flutter/material.dart';

import 'add.dart';
import 'contants.dart';
import 'exercises.dart';
import 'home.dart';
import 'more.dart';

class ScoreLeaderBord extends StatefulWidget {
  @override
  _ScoreLeaderBordState createState() => _ScoreLeaderBordState();
}

class _ScoreLeaderBordState extends State<ScoreLeaderBord> {
  int _selectedIndex = 0;
  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Firestore _firestore = Firestore.instance;
  List<DocumentSnapshot> _profile = [];
  bool loadingProfile = true;
  int _per_page = 15;

  DocumentSnapshot _lastdocument;
  ScrollController _scrollController = ScrollController();
  bool _gettingMoreProfile = false;
  bool _morePrdouctsAvaible = true;
  getProfile() async {
    Query q = _firestore
        .collection('profile')
        .orderBy('score', descending: true)
        //profile tablosundan kullanıcıları score göre sıralama
        .limit(_per_page);
    setState(() {
      loadingProfile = true;
    });

    QuerySnapshot querySnapshot = await q.getDocuments();
    _profile = querySnapshot.documents;
    _lastdocument = querySnapshot.documents[querySnapshot.documents.length - 1];
    setState(() {
      loadingProfile = false;
    });
  }

  getMoreProfile() async {
    if (_morePrdouctsAvaible == false) {
      print('noo');
    }
    if (_morePrdouctsAvaible == true) {
      print('yes');
    }

    _morePrdouctsAvaible = true;

    Query q = _firestore
        .collection('profile')
        .orderBy('score', descending: true)
        .startAfter([_lastdocument.data]).limit(_per_page);

    QuerySnapshot querySnapshot = await q.getDocuments();
    if (querySnapshot.documents.length < _per_page) {
      _morePrdouctsAvaible = false;
    }
    _lastdocument = querySnapshot.documents[querySnapshot.documents.length - 1];
    _profile.addAll(querySnapshot.documents);

    setState(() {});
    _gettingMoreProfile = false;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProfile();
    _scrollController.addListener(() {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.position.pixels;
      double delta = MediaQuery.of(context).size.height * 0.25;
//      if (maxScroll - currentScroll <= delta) {
//        getMoreProfile();
//      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leader Bord"),
        backgroundColor: Colors.grey,
      ),
      body: loadingProfile == true
          ? Container(
              child: Center(
                child: Text('Loading data'),
              ),
            )
          : Container(
              child: _profile.length == 0
                  ? Center(
                      child: Text('No profile'),
                    )
                  : ListView.builder(
                      controller: _scrollController,
                      itemCount: _profile.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        int rank = index + 1;

                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.purple,
                          ),
                          height: MediaQuery.of(context).size.height * 0.15,
                          margin: EdgeInsets.all(15.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 1,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        ('$rank.'),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontFamily: 'Rajdhani'),
                                        textAlign: TextAlign.center,
                                      ),
                                      CircleAvatar(
                                          child: ClipOval(
                                        child: Image.network(
                                            _profile[index].data["photoUrl"]),
                                      )),
                                    ],
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        child: AutoSizeText(
                                          "${_profile[index].data["name"]} score:${_profile[index].data["score"]}",
                                          //her kullanıcının tek tek isimlerini satırda göstermesi için
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 3,
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        );
                      })),
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
