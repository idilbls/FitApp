//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase/firebase.dart';
//import 'package:fitappson/deneme.dart';
//
//import 'package:flutter/material.dart';
//
//final dbReference = Firestore.instance;
//
//class Profile {
//  String email;
//  String name;
//  String gender;
//  String brith;
//  int actvityLevel;
//  int height;
//  int weight;
//  String url;
//
//  Profile(this.name, this.gender, this.brith, this.actvityLevel, this.height,
//      this.email, this.weight);
//
//  void initState() async {
//    dbReference
//        .collection("profile")
//        .where("e-mail", isEqualTo: "$email")
//        .getDocuments()
//        .then((QuerySnapshot snapshot) {
//      snapshot.documents.forEach((f) => print('${f.data}}'));
//      snapshot.documents.forEach((profileData) {
//        gender = profileData.data["gender"];
//        url = profileData.data["url"];
//        actvityLevel = int.parse(profileData.data["activityLevel"]);
//        print('$url');
//      });
//    });
//  }
//}
//
//void deneme() async {}

//                                StreamBuilder(
//                                    stream: Firestore.instance
//                                        .collection('profile')
//                                        .document('$email')
//                                        .snapshots(),
//                                    builder: (context, snapshot) {
//                                      if (!snapshot.hasData) {
//                                        return new Text("Loading");
//                                      }
//                                      var username = snapshot.data;
//
//                                      var date = snapshot.data;
//
//                                      return Column(
//                                        children: <Widget>[
//                                          new Text(
//                                            username["name"],
//                                            style: kNormalLabelTextStyle,
//                                            textAlign: TextAlign.center,
//                                          ),
//                                          new Text(
//                                            date["height"],
//                                            style: kNormalLabelTextStyle,
//                                            textAlign: TextAlign.center,
//                                          ),
//                                        ],
//                                      );
//                                    }),
