import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:fitappson/s_change_password.dart';
import 'package:flutter/material.dart';
import 'package:fitappson/home.dart';
import 'package:fitappson/exercises.dart';
import 'package:fitappson/settings.dart';
import 'package:fitappson/add.dart';
import 'package:fitappson/more.dart';
import 'package:firebase_auth/firebase_auth.dart';




class change_password extends StatefulWidget {
  @override
  _change_passwordState createState() => _change_passwordState();
}

class _change_passwordState extends State<change_password> {
  FirebaseAuth auth = FirebaseAuth.instance;
  void mail() async {
    final FirebaseUser user = await auth.currentUser();
    final uemail = user.email;
    print(uemail);
  }

  int _selectedIndex = 0;
  final myController = TextEditingController();
  final emailEditingController = TextEditingController();
  final List <Widget> _children= [



  ];
  void changePage(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  @override



  Widget build(BuildContext context) {

    return Scaffold(


      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,
      body: Center(

        child: Container(
          alignment: Alignment.topCenter,
          width:600,
          height: 760,
          margin: const EdgeInsets.all(10.0),
          padding: EdgeInsets.all(20.0),
          decoration: new BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.88),
              borderRadius: BorderRadius.circular(10.0),
              image: new DecorationImage(image: AssetImage('images/forget4.jpg'),fit: BoxFit.fill)
          ),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Text(
                "Reset Your Password",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 35,
                  fontFamily: 'Rajdhani',
                  color: Colors.black.withOpacity(0.67),
                ),
              ),
              Spacer(flex: 2),
              Text(

                "  Enter your E-Mail:",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Rajdhani',
                  color: Colors.black,
                ),
              ),
              TextField(
                controller: emailEditingController,
                obscureText: false,
                style: TextStyle(color: Colors.black, fontSize: 18,),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical:10.0,horizontal: 20.0),
                  hintStyle: TextStyle(color: Colors.black,
                    fontSize: 5.0,
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
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(137, 55, 150, 100),
                  ),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),
              //Spacer(flex: 1),
              RaisedButton(
                onPressed: () => {
                  auth.sendPasswordResetEmail(email: "${emailEditingController.text}"),
                },
                color: Color.fromRGBO(40, 132, 218, 100),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                elevation: 5.0,
                splashColor: Colors.grey,
                animationDuration: Duration(seconds: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30),
                ),
                child: Container(
                  width: 250,
                  height: 28,

                  child: Text(" Sent reset e-mail",
                    // overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold,
                      fontFamily: 'Rajdhani',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}