//import 'package:flutter/material.dart';
//
//import 'package:image_picker/image_picker.dart';
//import 'package:firebase_storage/firebase_storage.dart';
//import 'dart:io';
//import 'package:path/path.dart';
//
//class ProfilePage extends StatefulWidget {
//  @override
//  _ProfilePageState createState() => _ProfilePageState();
//}
//
//class _ProfilePageState extends State<ProfilePage> {
//  File _image;
//
//  @override
//  Widget build(BuildContext context) {
//    Future getImage() async {
//      var image = await ImagePicker.pickImage(source: ImageSource.gallery);
//
//      setState(() {
//        _image = image;
//        print('Image Path $_image');
//      });
//    }
//
//    Future uploadPic(BuildContext context) async {
//      String fileName = basename(_image.path);
//      StorageReference firebaseStorageRef =
//          FirebaseStorage.instance.ref().child(fileName);
//      StorageUploadTask uploadTask = firebaseStorageRef.putFile(_image);
//      StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
//      setState(() {
//        print("Profile Picture uploaded");
//        Scaffold.of(context)
//            .showSnackBar(SnackBar(content: Text('Profile Picture Uploaded')));
//      });
//    }
//
//    return Scaffold(
//      body: Builder(
//        builder: (context) => Container(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.start,
//            children: <Widget>[
//              SizedBox(
//                height: 20.0,
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  Align(
//                    alignment: Alignment.center,
//                    child: CircleAvatar(
//                      radius: 100,
//                      backgroundColor: Color(0xff476cfb),
//                      child: ClipOval(
//                        child: new SizedBox(
//                          width: 180.0,
//                          height: 180.0,
//                          child: (_image != null)
//                              ? Image.file(
//                                  _image,
//                                  fit: BoxFit.fill,
//                                )
//                              : Image.network(
//                                  "https://images.unsplash.com/photo-1502164980785-f8aa41d53611?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
//                                  fit: BoxFit.fill,
//                                ),
//                        ),
//                      ),
//                    ),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.only(top: 60.0),
//                    child: IconButton(
//                      icon: Icon(
//                        Icons.audiotrack,
//                        color: Colors.green,
//                        size: 30.0,
//                      ),
//                      onPressed: () {
//                        getImage();
//                      },
//                    ),
//                  ),
//                ],
//              ),
//              SizedBox(
//                height: 20.0,
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: <Widget>[
//                  Align(
//                    alignment: Alignment.centerLeft,
//                    child: Container(
//                      child: Column(
//                        children: <Widget>[
//                          Align(
//                            alignment: Alignment.centerLeft,
//                            child: Text('Username',
//                                style: TextStyle(
//                                    color: Colors.blueGrey, fontSize: 18.0)),
//                          ),
//                          Align(
//                            alignment: Alignment.centerLeft,
//                            child: Text('Michelle James',
//                                style: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 20.0,
//                                    fontWeight: FontWeight.bold)),
//                          ),
//                        ],
//                      ),
//                    ),
//                  ),
//                  Align(
//                    alignment: Alignment.centerRight,
//                    child: Container(),
//                  ),
//                ],
//              ),
//              SizedBox(
//                height: 20.0,
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: <Widget>[
//                  Align(
//                    alignment: Alignment.centerLeft,
//                    child: Container(
//                      child: Column(
//                        children: <Widget>[
//                          Align(
//                            alignment: Alignment.centerLeft,
//                            child: Text('Birthday',
//                                style: TextStyle(
//                                    color: Colors.blueGrey, fontSize: 18.0)),
//                          ),
//                          Align(
//                            alignment: Alignment.centerLeft,
//                            child: Text('1st April, 2000',
//                                style: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 20.0,
//                                    fontWeight: FontWeight.bold)),
//                          ),
//                        ],
//                      ),
//                    ),
//                  ),
//                  Align(
//                    alignment: Alignment.centerRight,
//                    child: Container(),
//                  ),
//                ],
//              ),
//              SizedBox(
//                height: 20.0,
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: <Widget>[
//                  Align(
//                    alignment: Alignment.centerLeft,
//                    child: Container(
//                      child: Column(
//                        children: <Widget>[
//                          Align(
//                            alignment: Alignment.centerLeft,
//                            child: Text('Location',
//                                style: TextStyle(
//                                    color: Colors.blueGrey, fontSize: 18.0)),
//                          ),
//                          Align(
//                            alignment: Alignment.centerLeft,
//                            child: Text('Paris, France',
//                                style: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 20.0,
//                                    fontWeight: FontWeight.bold)),
//                          ),
//                        ],
//                      ),
//                    ),
//                  ),
//                  Align(
//                    alignment: Alignment.centerRight,
//                    child: Container(),
//                  ),
//                ],
//              ),
//              Container(
//                margin: EdgeInsets.all(20.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: <Widget>[
//                    Text('Email',
//                        style:
//                            TextStyle(color: Colors.blueGrey, fontSize: 18.0)),
//                    SizedBox(width: 20.0),
//                    Text('michelle123@gmail.com',
//                        style: TextStyle(
//                            color: Colors.black,
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold)),
//                  ],
//                ),
//              ),
//              SizedBox(
//                height: 20.0,
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: <Widget>[
//                  RaisedButton(
//                    color: Color(0xff476cfb),
//                    onPressed: () {
//                      Navigator.of(context).pop();
//                    },
//                    elevation: 4.0,
//                    splashColor: Colors.blueGrey,
//                    child: Text(
//                      'Cancel',
//                      style: TextStyle(color: Colors.white, fontSize: 16.0),
//                    ),
//                  ),
//                  RaisedButton(
//                    color: Color(0xff476cfb),
//                    onPressed: () {
//                      uploadPic(context);
//                    },
//                    elevation: 4.0,
//                    splashColor: Colors.blueGrey,
//                    child: Text(
//                      'Submit',
//                      style: TextStyle(color: Colors.white, fontSize: 16.0),
//                    ),
//                  ),
//                ],
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

//import 'package:firebase_storage/firebase_storage.dart';
//import 'package:fitappson/Login_Page.dart';
//import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//
//import 'dart:io';
//import 'dart:math';
//
//class deneme extends StatefulWidget {
//  @override
//  _denemeState createState() => _denemeState();
//}
//
//class _denemeState extends State<deneme> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Firebase Storage'),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            new Flexible(
//              child: _buildBody(context),
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: getImage,
//        child: Icon(Icons.add_a_photo),
//      ),
//    );
//  }
//
//  Widget _buildBody(BuildContext context) {
//    return StreamBuilder(
//      stream: Firestore.instance
//          .collection('profile')
//          .document('$email')
//          .snapshots(),
//      builder: (context, snapshot) {
//        if (!snapshot.hasData) return LinearProgressIndicator();
//
//        return _buildList(context, snapshot.data.documents);
//      },
//    );
//  }
//
//  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
//    return ListView(
//        padding: const EdgeInsets.only(top: 20.0),
//        children:
//            snapshot.map((data) => _buildListItem(context, data)).toList());
//  }
//
//  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
//    final record = Record.fromSnapshot(data);
//
//    return Padding(
//      key: ValueKey(record.location),
//      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//      child: Container(
//        decoration: BoxDecoration(
//          border: Border.all(color: Colors.grey),
//          borderRadius: BorderRadius.circular(5.0),
//        ),
//        child: ListTile(
//          title: Column(
//            children: <Widget>[
//              Padding(
//                padding: const EdgeInsets.all(10.0),
//                child: Text(
//                  record.location,
//                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                ),
//              ),
//              Image.network(record.url),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//
//  Future getImage() async {
//    // Get image from gallery.
//    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
//    _uploadImageToFirebase(image);
//  }
//
//  Future<void> _uploadImageToFirebase(File image) async {
//    try {
//      // Make random image name.
//      int randomNumber = Random().nextInt(100000);
//      String imageLocation = 'profilePicture/image${randomNumber}.jpg';
//
//      // Upload image to firebase.
//      final StorageReference storageReference =
//          FirebaseStorage().ref().child(imageLocation);
//      final StorageUploadTask uploadTask = storageReference.putFile(image);
//      await uploadTask.onComplete;
//      _addPathToDatabase(imageLocation);
//    } catch (e) {
//      print(e.message);
//    }
//  }
//
//  Future<void> _addPathToDatabase(String text) async {
//    try {
//      // Get image URL from firebase
//      final ref = FirebaseStorage().ref().child(text);
//      var imageString = await ref.getDownloadURL();
//
//      // Add location and url to database
//      await Firestore.instance
//          .collection('profile')
//          .document('$email')
//          .updateData({'photoUrl': imageString, 'location': text});
//    } catch (e) {
//      print(e.message);
//      showDialog(
//          context: context,
//          builder: (context) {
//            return AlertDialog(
//              content: Text(e.message),
//            );
//          });
//    }
//  }
//}
//
//class Record {
//  final String location;
//  final String url;
//  final DocumentReference reference;
//
//  Record.fromMap(Map<String, dynamic> map, {this.reference})
//      : assert(map['location'] != null),
//        assert(map['url'] != null),
//        location = map['location'],
//        url = map['url'];
//
//  Record.fromSnapshot(DocumentSnapshot snapshot)
//      : this.fromMap(snapshot.data, reference: snapshot.reference);
//
//  @override
//  String toString() => "Record<$location:$url>";
//}
