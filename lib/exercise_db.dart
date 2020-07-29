import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Login_Page.dart';
//import 'hareketlerDeneme.dart';

class hareketler extends StatefulWidget {
  @override
  _hareketlerState createState() => _hareketlerState();
}

class _hareketlerState extends State<hareketler> {
  Firestore _firestore = Firestore.instance;
  List<DocumentSnapshot> _exercise = [];
  bool loadingProfile = true;
  int _per_page = 15;

  int index;
  DocumentSnapshot _lastdocument;
  ScrollController _scrollController = ScrollController();
  bool _gettingMoreProfile = false;
  bool _morePrdouctsAvaible = true;
  getExercise() async {
    Query q = _firestore.collection('exercise').limit(_per_page);
    setState(() {
      loadingProfile = true;
    });
//    .where('category', isEqualTo: 'low')   koşullu çagırma
    QuerySnapshot querySnapshot = await q.getDocuments();
    _exercise = querySnapshot.documents;
    _lastdocument = querySnapshot.documents[querySnapshot.documents.length - 1];
    setState(() {
      loadingProfile = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getExercise();
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
        title: Text('EXERCISE'),
      ),
      body: loadingProfile == true
          ? Container(
              child: Center(
                child: Text('Exerrcise'),
              ),
            )
//          : Container(
//              child: _profile.length == 0
//                  ? Center(
//                      child: Text('No profile'),
//                    )
//                  : ListView.builder(
//                      controller: _scrollController,
//                      itemCount: _profile.length,
//                      itemBuilder: (BuildContext ctx, int index) {
//                        return ListTile(
////                          leading: CircleAvatar(
////                              child: ClipOval(
////                            child: Image.network(_profile[index].data["url"]),
////                          )),
//                          title: Text(_profile[index].data["name"]),
//                        );
//                      })),

          : Container(
              child: _exercise.length == 0
                  ? Center(
                      child: Text('No profile'),
                    )
                  : ListView.builder(
                      controller: _scrollController,
                      itemCount: _exercise.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        int rank = index + 1;
                        addExercise() async {
                          setState(() {
                            try {
                              dbReference
                                  .collection('profile')
                                  .document('$email')
                                  .updateData({
                                '${(_exercise[index].data["name"])}Count': '15',
                              });
                              print('asd');
                            } catch (e) {
                              print(e.toString());
                            }
                          });
                        }

                        return GestureDetector(
                          onTap: () {
                            print(_exercise[index].data["name"]);
//
//                            score = 5 * (_profile[index].data["id"]);
                            print('asd');
                            addExercise();
                          },
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 30.0),
                              color: Colors.purple,
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      (_exercise[index].data["name"]),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontFamily: 'Rajdhani'),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      ('$rank'),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontFamily: 'Rajdhani'),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      'set :' +
                                          (_exercise[index]
                                              .data["set"]
                                              .toString()),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontFamily: 'Rajdhani'),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              )),
                        );
                      })),
    );
  }
}
