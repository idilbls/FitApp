import 'package:flutter/cupertino.dart';
import 'package:fitappson/shoulder.dart';
import 'package:flutter/material.dart';
import 'package:fitappson/home.dart';
import 'package:fitappson/add.dart';
import 'package:fitappson/exercises.dart';
import 'package:fitappson/settings.dart';
import 'package:fitappson/more.dart';


class shoulder_5 extends StatefulWidget {
  @override
  _shoulder_5State createState() => _shoulder_5State();
}

class _shoulder_5State extends State<shoulder_5> {

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
              "   Dumbbell Lateral Raise",
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
                image: AssetImage('images/Shoulder/Dumbbell_lateral_raise.jpg',),
                //width: 50,
                //height: 50,
              ),
              Spacer(flex: 2),
              Text(
                "Perfect exercise for you to train your shoulders, easy to position yourself.",
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
                "   How to do it: Grip dumbbells with your hands, stand still with your feets apart shoulders width. Raise your arms to your shoulders and slowly lower your arms. ",
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
                "This exercise requires to have dumbbells.",
                textAlign: TextAlign.left,
                //overflow: TextOverflow.ellipsis,
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