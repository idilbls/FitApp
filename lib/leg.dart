import 'package:flutter/cupertino.dart';
import 'package:fitappson/change_email.dart';
import 'package:fitappson/change_password.dart';
import 'package:flutter/material.dart';
import 'package:fitappson/home.dart';
import 'package:fitappson/add.dart';
import 'package:fitappson/exercises.dart';
import 'package:fitappson/settings.dart';
import 'package:fitappson/more.dart';
import 'package:fitappson/leg_1.dart';
import 'package:fitappson/leg_2.dart';
import 'package:fitappson/leg_3.dart';
import 'package:fitappson/leg_4.dart';
import 'package:fitappson/leg_5.dart';
import 'package:fitappson/leg_6.dart';
import 'package:fitappson/leg_7.dart';
import 'package:fitappson/leg_8.dart';
import 'package:fitappson/leg_9.dart';
import 'package:fitappson/leg_10.dart';

class leg extends StatefulWidget {
  @override
  _legState createState() => _legState();
}

class _legState extends State<leg> {
  int _selectedIndex = 0;
  final List <Widget> _children = [
  ];
  List<String> litems=[
    "     Calf Raise",
    "     Flutter Kicks",
    "     Front Kick",
    "     Jump",
    "     Modified Scissor",
    "     Plank Leg Swing",
    "     Side Leg Raise",
    "     Squat",
    "     Walking Lunge",
    "     Wall Sit",
  ];
  _onSelected(int index) {
    setState(() {

      _selectedIndex = index;
    });
  }

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
            new IconButton(icon: Image.asset('images/back_icon.png',),
              onPressed: () => {
                Navigator.pop(context),
              },
              color: Colors.transparent,)
          ],
        ),
        title: new Column(
          children: <Widget>[
            Text(
              "                        Leg",
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

      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,

        children:<Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            color: Color.fromRGBO(255, 255,255, 37),
            height: 50.0,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: TextFormField(
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 11.0),
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(vertical: 0.0),
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ), // icon is 48px widget.
                        ),
                        hintText: 'Search and Find',
                        hintStyle: TextStyle(fontSize:11.0)),
                  ),
                ),
              ],
            ),
          ),



          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index){
                return (Container(
                  padding: EdgeInsets.only(left: 16, right:16),
                  color: Color(0XFFE5E5E5),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height:10,),
                      Row(
                        children: <Widget>[
                          Container(

                            width: 90,
                            height:90,
                            child: ClipOval(child: Image.asset("images/leg/1.JPG",fit: BoxFit.cover, ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>leg_1()),
                                    );
                                  }, child: Text("     Calf Raise",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Rajdhani',
                                    color: Colors.black.withOpacity(0.80),
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          new   IconButton(icon: Icon(Icons.arrow_right), color: Colors.grey,
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> leg_1()),
                              ),
                            },)
                        ], ),
                      const SizedBox(height:10,),
                      Row(
                        children: <Widget>[
                          Container(

                            width: 90,
                            height:90,
                            child: ClipOval(child: Image.asset("images/leg/2.JPG",fit: BoxFit.cover, ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>leg_2()),
                                    );
                                  }, child: Text("     Flutter Kicks",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Rajdhani',
                                    color: Colors.black.withOpacity(0.80),
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          new   IconButton(icon: Icon(Icons.arrow_right), color: Colors.grey,
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> leg_2()),
                              ),
                            },)
                        ],
                      ),
                      const SizedBox(height:10,),
                      Row(
                        children: <Widget>[
                          Container(

                            width: 90,
                            height:90,
                            child: ClipOval(child: Image.asset("images/leg/3.JPG",fit: BoxFit.cover, ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>leg_3()),
                                    );
                                  }, child: Text("     Front Kick",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Rajdhani',
                                    color: Colors.black.withOpacity(0.80),
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          new   IconButton(icon: Icon(Icons.arrow_right), color: Colors.grey,
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> leg_3()),
                              ),
                            },)
                        ],
                      ),
                      const SizedBox(height:10,),
                      Row(
                        children: <Widget>[
                          Container(

                            width: 90,
                            height:90,
                            child: ClipOval(child: Image.asset("images/leg/4.JPG",fit: BoxFit.cover, ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>leg_4()),
                                    );
                                  }, child: Text("     Jump",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Rajdhani',
                                    color: Colors.black.withOpacity(0.80),
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          new   IconButton(icon: Icon(Icons.arrow_right), color: Colors.grey,
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> leg_4()),
                              ),
                            },)
                        ],
                      ),
                      const SizedBox(height:10,),
                      Row(
                        children: <Widget>[
                          Container(

                            width: 90,
                            height:90,
                            child: ClipOval(child: Image.asset("images/leg/5.JPG",fit: BoxFit.cover, ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) => leg_5()),
                                    );
                                  }, child: Text("      Modified Scissor",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Rajdhani',
                                    color: Colors.black.withOpacity(0.80),
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          new   IconButton(icon: Icon(Icons.arrow_right), color: Colors.grey,
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> leg_5()),
                              ),
                            },)
                        ],
                      ),
                      const SizedBox(height:10,),
                      Row(
                        children: <Widget>[
                          Container(

                            width: 90,
                            height:90,
                            child: ClipOval(child: Image.asset("images/leg/6.JPG",fit: BoxFit.cover, ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>leg_6()),
                                    );
                                  }, child: Text("     Plank Leg Swing",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Rajdhani',
                                    color: Colors.black.withOpacity(0.80),
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          new   IconButton(icon: Icon(Icons.arrow_right), color: Colors.grey,
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> leg_6()),
                              ),
                            },)
                        ],
                      ),
                      const SizedBox(height:10,),
                      Row(
                        children: <Widget>[
                          Container(

                            width: 90,
                            height:90,
                            child: ClipOval(child: Image.asset("images/leg/7.JPG",fit: BoxFit.cover, ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>leg_7()),
                                    );
                                  }, child: Text("     Side Leg Raise",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Rajdhani',
                                    color: Colors.black.withOpacity(0.80),
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          new   IconButton(icon: Icon(Icons.arrow_right), color: Colors.grey,
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> leg_7()),
                              ),
                            },)
                        ],
                      ),
                      const SizedBox(height:10,),
                      Row(
                        children: <Widget>[
                          Container(

                            width: 90,
                            height:90,
                            child: ClipOval(child: Image.asset("images/leg/8.JPG",fit: BoxFit.cover, ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>leg_8()),
                                    );
                                  }, child: Text("     Squat",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Rajdhani',
                                    color: Colors.black.withOpacity(0.80),
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          new   IconButton(icon: Icon(Icons.arrow_right), color: Colors.grey,
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> leg_8()),
                              ),
                            },)
                        ],
                      ),
                      const SizedBox(height:10,),
                      Row(
                        children: <Widget>[
                          Container(

                            width: 90,
                            height:90,
                            child: ClipOval(child: Image.asset("images/leg/9.JPG",fit: BoxFit.cover, ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>leg_9()),
                                    );
                                  }, child: Text("     Walking Lunge",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Rajdhani',
                                    color: Colors.black.withOpacity(0.80),
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          new   IconButton(icon: Icon(Icons.arrow_right), color: Colors.grey,
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> leg_9()),
                              ),
                            },)
                        ],
                      ),
                      const SizedBox(height:10,),
                      Row(
                        children: <Widget>[
                          Container(

                            width: 90,
                            height:90,
                            child: ClipOval(child: Image.asset("images/leg/10.JPG",fit: BoxFit.cover, ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>leg_10()),
                                    );
                                  }, child: Text("     Wall Sit",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Rajdhani',
                                    color: Colors.black.withOpacity(0.80),
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          new   IconButton(icon: Icon(Icons.arrow_right), color: Colors.grey,
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> leg_10()),
                              ),
                            },)
                        ],
                      ),

                    ],
                  ),
                )
                );
              },
              separatorBuilder: (context, index,) => Divider(),
              itemCount: 1,
            ),
          ),



        ],
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