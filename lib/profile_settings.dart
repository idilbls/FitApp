

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitappson/accountset.dart';
import 'package:fitappson/profile_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitappson/home.dart';
import 'package:fitappson/more.dart';
import 'package:fitappson/exercises.dart';
import 'package:fitappson/settings.dart';
import 'package:fitappson/add.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'dart:io';
import 'dart:math';
import 'Login_Page.dart';

class profile_settings extends StatefulWidget {
  @override
  profile_settingsState createState() => profile_settingsState();
}

class profile_settingsState extends State<profile_settings> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final fullnamenew = TextEditingController();

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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile_Page()),
                ),
              },
              color: Colors.transparent,
            )
          ],
        ),
        title: Align(
          alignment: Alignment.topCenter,
          child: Text(
            'Account Settings',
            style: TextStyle(
              fontSize: 14.0,
              color: Color.fromRGBO(0, 0, 0, 67),
              fontFamily: 'Rajdhani',
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.all(10.0),
            padding: EdgeInsets.all(20.0),
            decoration: new BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.88),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(flex: 1),
                  Row(
                    children: <Widget>[
                      Container(width: 100,),
                      Container(
                        child:CircleAvatar(
                          radius: 40.0,
                          backgroundImage: NetworkImage('$url'),
                          backgroundColor: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children:<Widget>[
                      Container(width: 150,),
                      Container(
                        child: FloatingActionButton(
                          onPressed: getImage,
                          child: Icon(Icons.add_a_photo, color: Colors.white, ),
                          backgroundColor: Colors.purple,
                          mini: true,

                        ),
                      ),
                    ],
                  ),

                  Spacer(flex: 2),
                  Text(
                    "     Full Name:",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      fontFamily: 'Rajdhani',
                      color: Colors.black.withOpacity(1.0),
                    ),
                  ),
                  Spacer(flex: 1),
                  TextField(
                    onChanged: (value) {
                      name = value;
                    },
                    obscureText: false,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 1.0,
                        fontFamily: 'Rajdhani',
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(137, 55, 150, 100),
                            width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(137, 55, 150, 100),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                  Spacer(flex: 2),

                  Text(
                    "     Height:",
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      fontFamily: 'Rajdhani',
                      color: Colors.black.withOpacity(1.0),
                    ),
                  ),
                  Spacer(flex: 1),
                  TextField(
                    onChanged: (value) {
                      height = int.parse(value);
                    },
                    obscureText: false,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 1.0,
                        fontFamily: 'Rajdhani',
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(137, 55, 150, 100),
                            width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(137, 55, 150, 100),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                  Spacer(flex: 2),
                  Text(
                    "     Weight:",
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      fontFamily: 'Rajdhani',
                      color: Colors.black.withOpacity(1.0),
                    ),
                  ),
                  Spacer(flex: 1),
                  TextField(
                    onChanged: (value) {
                      weight = int.parse(value);
                    },
                    obscureText: false,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 1.0,
                        fontFamily: 'Rajdhani',
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(137, 55, 150, 100),
                            width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(137, 55, 150, 100),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                  Spacer(flex: 3),
                  RaisedButton(
                    onPressed: () => {

                      Firestore.instance.collection("profile")
                          .document("$email")
                          .updateData({'name' : name,
                        'height' : height,
                        'weight' : weight,})
                    },
                    color: Colors.purple.withOpacity(0.7),
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    elevation: 5.0,
                    splashColor: Colors.grey,
                    animationDuration: Duration(seconds: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30),
                    ),
                    child: Center(
                        child: Container(
                          width: 40,
                          height: 25,
                          child: Text(
                            "Save",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Rajdhani',
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ),
                ])),
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

  Future getImage() async {
    // Get image from gallery.
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    _uploadImageToFirebase(image);
  }

  Future<void> _uploadImageToFirebase(File image) async {
    try {
      // Make random image name.
      int randomNumber = Random().nextInt(100000);
      String imageLocation = 'profilePicture/image${randomNumber}.jpg';

      // Upload image to firebase.
      final StorageReference storageReference =
      FirebaseStorage().ref().child(imageLocation);
      final StorageUploadTask uploadTask = storageReference.putFile(image);
      await uploadTask.onComplete;
      _addPathToDatabase(imageLocation);
    } catch (e) {
      print(e.message);
    }
  }

  Future<void> _addPathToDatabase(String text) async {
    try {
      // Get image URL from firebase
      final ref = FirebaseStorage().ref().child(text);
      var imageString = await ref.getDownloadURL();

      // Add location and url to database
      await Firestore.instance
          .collection('profile')
          .document('$email')
          .updateData({'photoUrl': imageString, 'location': text});
      url = imageString;
    } catch (e) {
      print(e.message);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message),
            );
          });
    }
  }
}





class Record {
  final String location;
  final String url;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['location'] != null),
        assert(map['photoUrl'] != null),
        location = map['location'],
        url = map['photoUrl'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$location:$url>";
}
