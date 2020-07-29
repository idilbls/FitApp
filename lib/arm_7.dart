import 'package:flutter/cupertino.dart';
import 'package:fitappson/shoulder.dart';
import 'package:flutter/material.dart';
import 'package:fitappson/home.dart';
import 'package:fitappson/add.dart';
import 'package:fitappson/exercises.dart';
import 'package:fitappson/settings.dart';
import 'package:fitappson/more.dart';
import 'package:fitappson/arm.dart';


class arm_7 extends StatefulWidget {
  @override
  _arm_7State createState() => _arm_7State();
}

class _arm_7State extends State<arm_7> {

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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> shoulder()),
                ),
              },
              color: Colors.transparent,)
          ],
        ),
        title: new Column(
          children: <Widget>[
            Text(
              "   Side Plank",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Rajdhani',
                color: Colors.black.withOpacity(0.67),
              ),
            ),
          ],
        ),
      ),

      body: Center(
        child: Container(
          alignment: Alignment.topCenter,
          width:303,
          height: 400,

          margin: const EdgeInsets.all(10.0),
          padding: EdgeInsets.all(20.0),
          decoration: new BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.88),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(

            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Image(
                image: AssetImage('images/Arm1/Side_plank.jpg',),
                //width: 50,
                //height: 50,
              ),
              Spacer(flex: 2),
              Text(
                "An easy exercise with no requirements to train your body as a whole and your arms with your own weight.",
                textAlign: TextAlign.left,
                //overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: 'Rajdhani',
                  color: Colors.black,
                ),
              ),
              Spacer(flex: 1),


              Text(
                "   How to do it: Start on your side with your feet together and one forearm directly below your shoulder.Contract your core and raise your hips until your body is in a straight line from head to feet.Hold the position without letting your hips drop and reset to your starting position.",
                textAlign: TextAlign.left,
                //overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: 'Rajdhani',
                  color: Colors.black,
                ),
              ),
              Spacer(flex: 1),
              Text(
                "This exercise dont have any requirements but a yoga mat is suggested.",
                textAlign: TextAlign.left,
                // overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: 'Rajdhani',
                  color: Colors.black,
                ),
              ),


              Spacer(flex: 1),

            ],
          ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> arm()),

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