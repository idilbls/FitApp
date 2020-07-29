import 'package:fitappson/start.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'WelcomePage.dart';
import 'createAccountPage_1.dart';

void main() => runApp((FirstPage()));

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: start(),
      routes: {
        '/createAccount_1': (context) => start(),
      },
    );
  }
}

//void main() => runApp(MultiProvider(
//      providers: [
//        ChangeNotifierProvider(
//          create: (context) => AuthNotifier(),
//        ),
//        ChangeNotifierProvider(
//          create: (context) => FoodNotifier(),
//        ),
//      ],
//      child: MyApp(),
//    ));
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'Coding with Curry',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//        accentColor: Colors.lightBlue,
//      ),
//      home: Consumer<AuthNotifier>(
//        builder: (context, notifier, child) {
//          return notifier.user != null ? Feed() : Login();
//        },
//      ),
//    );
//  }
//}
