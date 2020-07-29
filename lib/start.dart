import 'package:fitappson/WelcomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fitappson/home.dart';
import 'package:fitappson/add.dart';
import 'package:fitappson/exercises.dart';
import 'package:fitappson/settings.dart';

class start extends StatefulWidget {
  @override
  _startState createState() => _startState();
}

class _startState extends State<start> {
  CarouselSlider carouselSlider;
  int _current = 0;
  int _selectedIndex = 0;
  final List<Widget> _children = [];
  List imgList = [
    'https://image.shutterstock.com/image-photo/group-running-women-on-treadmill-260nw-1399420694.jpg',
    'https://www.ozyegin.edu.tr/sites/default/files/upload/spormerkezi/fitness.jpg',
    'https://sporcuyum.com/wp-content/uploads/2018/12/egzersiz-makine.jpg',
    'https://parade.com/wp-content/uploads/2020/01/best-workout-apps-FTR.jpg',
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0XFFE5E5E5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            carouselSlider = CarouselSlider(
              height: 230.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: false,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                      ),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.purple : Colors.black12,
                  ),
                );
              }),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 330,
              height: 240,
              margin: const EdgeInsets.all(5.0),
              padding: EdgeInsets.all(5.0),
              decoration: new BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.88),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    " Welcome",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      fontFamily: 'Rajdhani',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "Fitness keeps you fit and healthy.",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'Rajdhani',
                      color: Colors.black.withOpacity(0.70),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Regular fitness: By ensuring your heart",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'Rajdhani',
                      color: Colors.black.withOpacity(0.70),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "rhythm is regulated. It makes your heart ",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'Rajdhani',
                      color: Colors.black.withOpacity(0.70),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "stronger and healthier than before.",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'Rajdhani',
                      color: Colors.black.withOpacity(0.70),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(10.0),
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Welcome()),
                      );
                    },
                    child: Container(
                      width: 50,
                      height: 15,
                      child: Center(
                        child: Text(
                          "Next",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Rajdhani',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}
