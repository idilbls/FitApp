import 'Login_Page.dart';
import 'afterSingUp_2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'contants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

enum Gender {
  male,
  famele,
}
final databaseReference = Firestore.instance;

class afterSingUp_1 extends StatefulWidget {
  @override
  _afterSingUp_1State createState() => _afterSingUp_1State();
}

class _afterSingUp_1State extends State<afterSingUp_1> {
  final _fireStore = Firestore.instance;
//  final databaseReference = FirebaseDatabase.instance.reference();

  @override
  Gender selectedGender = Gender.male;

  String _userEmail;

  _updateData() async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    setState(() {
      _userEmail = user.email;
      print('object deneme $email');

      try {
        databaseReference
            .collection('profile')
            .document('$_userEmail')
            .updateData({'gender': '$selectedGender'});
      } catch (e) {
        print(e.toString());
      }
    });
  }
//hangi kullanıcı ise ona seçilen gender i yüklüyor

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // my_Iconbutton(),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Text(
              'Tell us about yourself!',
              style: kBigLabelTextStyle,
            ),
            SizedBox(
              height: 90,
            ),
            Column(
              children: <Widget>[
                kchoseeButton(
                  buttonTitle: 'Male',
                  click: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  buttonColor: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInActiveCardColor,
                  TextColor: selectedGender == Gender.famele
                      ? Colors.purple
                      : Colors.white,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                kchoseeButton(
                  buttonTitle: 'Famele',
                  click: () {
                    setState(() {
                      selectedGender = Gender.famele;
                    });
                  },
                  buttonColor: selectedGender == Gender.famele
                      ? kActiveCardColor
                      : kInActiveCardColor,
                  TextColor: selectedGender == Gender.famele
                      ? Colors.white
                      : Colors.purple,
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  WelcomePageButton(
                      buttonTitle: 'NEXT',
                      click: () {
                        _updateData();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => afterSingUp_2()),
                        );
                      },
                      buttonColor: kActiveCardColor)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
