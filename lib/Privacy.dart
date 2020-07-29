import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitappson/home.dart';
import 'package:fitappson/more.dart';
import 'package:fitappson/exercises.dart';
import 'package:fitappson/settings.dart';
import 'package:fitappson/add.dart';


class Privacy extends StatefulWidget {
  @override
  PrivacyHomeState createState() => PrivacyHomeState();
}

class PrivacyHomeState extends State<Privacy> {
  int _selectedIndex = 0;
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
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0XFFE5E5E5),
      appBar: new AppBar(
        backgroundColor: Color(0XFFE5E5E5),
        elevation: 0,
        leading: new Column(
          children: <Widget>[
            new IconButton(icon: Image.asset('images/back_icon.png',),
              onPressed: null,
              color: Colors.transparent,)
          ],
        ),
        title: Align(
          alignment: Alignment.topCenter,
          child: Text(
            'Privacy',
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

            alignment: Alignment.topCenter ,
            width:350,
            height: 460,
            margin: const EdgeInsets.all(10.0),
            padding: EdgeInsets.all(20.0),
            decoration: new BoxDecoration(
              image: new DecorationImage(image: ExactAssetImage('images/privacy.jpeg'),
                fit: BoxFit.scaleDown,

              ),
              color: Color.fromRGBO(255, 255, 255, 0.88),
              borderRadius: BorderRadius.circular(10.0),
            ),

            child: Column(
                children: <Widget>[
                  Text(
                    "DATA PRIVACY",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Rajdhani',
                      color: Colors.black.withOpacity(0.65),
                    ),
                  ),
                  Spacer(flex: 1),

                  Text(
                    "We guarantee the security of the data collected, processed, and stored.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.normal,
                      fontSize: 14,
                      fontFamily: 'Rajdhani',
                      color: Colors.black.withOpacity(0.57),
                    ),
                  ),
                ]
            )
        ),
      ),

      bottomNavigationBar:Theme(
        data:Theme.of(context).copyWith(canvasColor: Color.fromRGBO(74, 70, 70, 80),),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: changePage,
          iconSize: 35,

          fixedColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(icon: Image.asset('images/home.png',),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> home()),

                  ),
                },
                color: Colors.transparent,),
              title: SizedBox(
                height: 0,
              ),
            ),

            BottomNavigationBarItem(
              icon: IconButton(icon: Image.asset('images/menu.png',),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> more()),
                  ),
                },
                color: Colors.transparent,),
              title: SizedBox(
                height: 0,
              ),
            ),

            BottomNavigationBarItem(
              icon: IconButton(icon: Image.asset('images/plus.png',width:50,height:50,),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> add()),

                  ),
                },
                color: Colors.transparent,),
              title: SizedBox(
                height: 0,
              ),
            ),

            BottomNavigationBarItem(
              icon: IconButton(icon: Image.asset('images/dumbbell.png',),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> exercises()),
                  ),
                },
                color: Colors.transparent,),
              title: SizedBox(
                height: 0,
              ),
            ),

            BottomNavigationBarItem(
              icon: IconButton(icon: Image.asset('images/settings_active.png',),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> settings()),
                  ),
                },
                color: Colors.transparent,),
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

