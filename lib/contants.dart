import 'package:auto_size_text/auto_size_text.dart';
import 'package:fitappson/Login_Page.dart';

import 'contants.dart';
import 'package:flutter/material.dart';

const kButtonColorRed = Color(0xFFE41515);
const kButtonColorGrey = Color(0xFF424242);
const kButtonColorPurple = Color(0xFF893796);
const kActiveCardColor = Color(0XFF2884DA);
const kInActiveCardColor = Color(0XFFFFFFFF);
const kButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontFamily: "Rajdhani",
);

final textController = TextEditingController();
const kLabelTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontFamily: "Rajdhani",
  fontWeight: FontWeight.bold,
);
const kBigLabelTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 30.0,
  fontFamily: "Rajdhani",
  fontWeight: FontWeight.bold,
);
const kNormalLabelTextStyle = TextStyle(
  color: Colors.black54,
  fontSize: 20.0,
  fontFamily: "Rajdhani",
  fontWeight: FontWeight.bold,
);
const kBoldSmallTextStyle = TextStyle(
  color: Colors.black54,
  fontSize: 15.0,
  fontFamily: "Rajdhani",
  fontWeight: FontWeight.bold,
);
const kSmallTextStyle = TextStyle(
    color: Colors.black54,
    fontSize: 12.5,
    fontFamily: "Rajdhani",
    fontWeight: FontWeight.bold);

class WelcomePageButton extends StatelessWidget {
  WelcomePageButton(
      {@required this.buttonTitle,
      @required this.click,
      @required this.buttonColor});
  final String buttonTitle;
  final Function click;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        color: buttonColor,
        child: ListTile(
          title: Text(
            buttonTitle,
            style: TextStyle(
                color: Colors.white, fontSize: 20.0, fontFamily: 'Rajdhani'),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class kchoseeButton extends StatelessWidget {
  kchoseeButton({
    @required this.buttonTitle,
    @required this.click,
    @required this.buttonColor,
    @required this.TextColor,
  });
  final String buttonTitle;
  final Function click;
  final Color buttonColor;
  final Color TextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.4,
      child: GestureDetector(
        onTap: click,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: buttonColor,
          child: ListTile(
            title: Text(
              buttonTitle,
              style: TextStyle(
                  color: TextColor, fontSize: 20.0, fontFamily: 'Rajdhani'),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class kSizechoseeButton extends StatelessWidget {
  kSizechoseeButton(
      {@required this.buttonTitle,
      @required this.click,
      @required this.buttonColor,
      @required this.TextColor,
      @required this.width,
      @required this.height});
  final String buttonTitle;
  final Function click;
  final Color buttonColor;
  final Color TextColor;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: GestureDetector(
        onTap: click,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: buttonColor,
          child: Center(
            child: AutoSizeText(
              buttonTitle,
              style: TextStyle(
                color: TextColor,
                fontSize: 20.0,
                fontFamily: 'Rajdhani',
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class TextField_CreateAccount extends StatelessWidget {
  TextField_CreateAccount(
      {@required this.fildText,
      @required this.TextFieldColor,
      @required this.marginTop,
      @required this.textSEE,
      @required this.onChangeValue,
      @required this.inputType});
  final Color TextFieldColor;
  final String fildText;
  final double marginTop;
  final bool textSEE;
  final Function onChangeValue;
  var inputType;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 40.0,
      margin: EdgeInsets.only(
        top: marginTop,
      ),
      child: TextField(
        textAlign: TextAlign.center,
        onChanged: onChangeValue,
        obscureText: textSEE,
        keyboardType: inputType,
        decoration: InputDecoration(
            fillColor: TextFieldColor,
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            hintText: fildText,
            hintStyle: TextStyle(color: Colors.black)),
      ),
    );
  }
}

class my_iconbutton extends StatelessWidget {
  @override
  my_iconbutton(
      {@required this.click,
      @required this.iconImageName,
      @required this.iconBackgrundColor,
      @required this.iconsize});
  final Function click;
  final String iconImageName;
  final Color iconBackgrundColor;
  final double iconsize;

  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        color: iconBackgrundColor,
        shape: CircleBorder(),
      ),
      child: IconButton(
        icon: Image.asset(iconImageName),
        color: Colors.white,
        onPressed: click,
      ),
    );
  }
}

class my_iconbutton_Big extends StatelessWidget {
  @override
  my_iconbutton_Big(
      {@required this.click,
      @required this.iconImageName,
      @required this.iconBackgrundColor,
      @required this.iconsize});
  final Function click;
  final String iconImageName;
  final Color iconBackgrundColor;
  final double iconsize;

  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        color: iconBackgrundColor,
        shape: CircleBorder(),
      ),
      child: IconButton(
        iconSize: iconsize,
        icon: Image.asset(iconImageName),
        color: Colors.white,
        onPressed: click,
      ),
    );
  }
}

class my_Iconbutton_Profile extends StatelessWidget {
  @override
  my_Iconbutton_Profile(
      {@required this.click, @required this.width, @required this.height});
  final Function click;
  final double width;
  final double height;
  Widget build(BuildContext context) {
    return Ink(
      decoration: const ShapeDecoration(
        color: Colors.transparent,
        shape: CircleBorder(),
      ),
      child: IconButton(
        iconSize: height,
        icon: Image.asset('$url'),
        color: Colors.white,
        onPressed: click,
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.renk, @required this.cardChild, @required this.onPress});
  Color renk;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: renk,
        ),
      ),
    );
  }
}

class DrawTriangle extends CustomPainter {
  Paint _paint;

  DrawTriangle() {
    _paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class homeCard extends StatelessWidget {
  const homeCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('images/finish2.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.transparent,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('asda'),
              ],
            ),
//            const ListTile(
//              //  leading: Icon(Icons.album, size: 70),
//              title:
//                  Text('Heart Shaker', style: TextStyle(color: Colors.white)),
//              // subtitle: Text('TWICE', style: TextStyle(color: Colors.white)),
//            ),
          ],
        ),
      ),
    );
  }
}
