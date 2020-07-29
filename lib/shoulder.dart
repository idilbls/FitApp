import 'package:flutter/cupertino.dart';
import 'package:fitappson/change_email.dart';
import 'package:fitappson/change_password.dart';
import 'package:flutter/material.dart';
import 'package:fitappson/home.dart';
import 'package:fitappson/add.dart';
import 'package:fitappson/exercises.dart';
import 'package:fitappson/settings.dart';
import 'package:fitappson/more.dart';
import 'package:fitappson/shoulder_1.dart';
import 'package:fitappson/shoulder_2.dart';
import 'package:fitappson/shoulder_3.dart';
import 'package:fitappson/shoulder_4.dart';
import 'package:fitappson/shoulder_5.dart';
import 'package:fitappson/shoulder_6.dart';
import 'package:fitappson/shoulder_7.dart';
import 'package:fitappson/shoulder_8.dart';
import 'package:fitappson/shoulder_9.dart';


class shoulder extends StatefulWidget {
  @override
  _shoulderState createState() => _shoulderState();
}

class _shoulderState extends State<shoulder> {
  int _selectedIndex = 0;
  final List <Widget> _children = [
  ];
  List<String> litems=[
    "     Dumbbell Shoulder Press",
    "     Bent-Over",
    "     Shoulder Shrugs",
    "     Push-Ups",
    "     Dumbbell Lateral Raise",
    "     Shoulder Press",
    "     Upraight Row",
    "     Shoulder Press",
    "     Shoulder Taps",
    "     Arm Circles",
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
            )
          ],
        ),
        title: new Column(
          children: <Widget>[
            Text(
              "                     Shoulder",
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
                            child: ClipOval(child: Image.asset("images/shoulder/1.PNG",fit: BoxFit.cover, ),
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
                                          builder: (context) =>shoulder_1()),
                                    );
                                  }, child: Text("  Dumbbell Shoulder Press",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> shoulder_1()),
                              ),
                            },)
                        ], ),
                      const SizedBox(height:10,),
                      Row(
                        children: <Widget>[
                          Container(

                            width: 90,
                            height:90,
                            child: ClipOval(child: Image.asset("images/shoulder/2.PNG",fit: BoxFit.cover, ),
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
                                          builder: (context) =>shoulder_2()),
                                    );
                                  }, child: Text("     Bent-Over",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> shoulder_2()),
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
                            child: ClipOval(child: Image.asset("images/shoulder/3.PNG",fit: BoxFit.cover, ),
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
                                          builder: (context) =>shoulder_3()),
                                    );
                                  }, child: Text("     Shoulder Shrugs",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> shoulder_3()),
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
                            child: ClipOval(child: Image.asset("images/shoulder/4.PNG",fit: BoxFit.cover, ),
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
                                          builder: (context) =>shoulder_4()),
                                    );
                                  }, child: Text("     Push Ups",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> shoulder_4()),
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
                            child: ClipOval(child: Image.asset("images/shoulder/5.PNG",fit: BoxFit.cover, ),
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
                                          builder: (context) =>shoulder_5()),
                                    );
                                  }, child: Text("     Dumbbell Lateral Raise",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> shoulder_5()),
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
                            child: ClipOval(child: Image.asset("images/shoulder/6.PNG",fit: BoxFit.cover, ),
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
                                          builder: (context) =>shoulder_6()),
                                    );
                                  }, child: Text("     Shoulder Press",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> shoulder_6()),
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
                            child: ClipOval(child: Image.asset("images/shoulder/7.PNG",fit: BoxFit.cover, ),
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
                                          builder: (context) =>shoulder_7()),
                                    );
                                  }, child: Text("     Upraight Row",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> shoulder_7()),
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
                            child: ClipOval(child: Image.asset("images/shoulder/8.PNG",fit: BoxFit.cover, ),
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
                                          builder: (context) =>shoulder_6()),
                                    );
                                  }, child: Text("     Shoulder Press",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> shoulder_6()),
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
                            child: ClipOval(child: Image.asset("images/shoulder/9.PNG",fit: BoxFit.cover, ),
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
                                          builder: (context) =>shoulder_8()),
                                    );
                                  }, child: Text("     Shoulder Taps",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> shoulder_8()),
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
                            child: ClipOval(child: Image.asset("images/shoulder/10.PNG",fit: BoxFit.cover, ),
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
                                          builder: (context) =>shoulder_9()),
                                    );
                                  }, child: Text("     Arm Circles",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> shoulder_9()),
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

