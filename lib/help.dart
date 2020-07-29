import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitappson/home.dart';
import 'package:fitappson/more.dart';
import 'package:fitappson/exercises.dart';
import 'package:fitappson/settings.dart';
import 'package:fitappson/add.dart';
import 'package:url_launcher/url_launcher.dart';



class help extends StatefulWidget {
  @override
  HelpState createState() => HelpState();
}

class HelpState extends State<help> {
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
              onPressed: () => {
                Navigator.pop(context),
              },
              color: Colors.transparent,)
          ],
        ),
        title: Align(
          alignment: Alignment.topCenter,
          child: Text(
            'Help Center',
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
            height: 550,
            margin: const EdgeInsets.all(10.0),
            padding: EdgeInsets.all(20.0),

            child: Column(
                children: <Widget>[





                  Text(
                    "Are you facing any problem?",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Rajdhani',
                      color: Colors.black.withOpacity(0.65),
                    ),
                  ),
                  Spacer(flex: 10),

                  IconButton(icon: Image.asset('images/help.jpeg',),
                      iconSize:300 ,


                      onPressed: () =>
                      {
                      }
                  ),



                  Text(
                    "Do not hesitate to write to us about anything that matters. We are here to support you.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.normal,
                      fontSize: 14,
                      fontFamily: 'Rajdhani',
                      color: Colors.black.withOpacity(0.57),
                    ),
                  ),


                  Text(
                    "You can contact at",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'Rajdhani',
                      color: Colors.black.withOpacity(0.85),

                    ),
                  ),
                  InkWell(
                    child: Text("fitapp567@gmail.com"),
                    onTap: () async {
                      if (await canLaunch("fitapp567@gmail.com")) {
                        await launch("fitapp567@gmail.com");
                      }
                    },
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

