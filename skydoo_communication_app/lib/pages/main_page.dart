import 'package:flutter/material.dart';
import './show_page.dart';
import './login_page.dart';

class MainPage extends StatelessWidget {
  Widget build (BuildContext context) {
    return new Material(
      color: Colors.white24,
      child: new InkWell(
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => ShowPage())),
        child: new Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            new Positioned(top: 175,
              child: new Container(
                child: new Image.asset(
                  'assets/images/skydoo_logo_noir.png',
                  scale: 100.0,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            //new Text("Let's Quizz", style: new TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),),
            new Text("Tap to Start the presentation!", style: new TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 110),
          ]
        )
      ),
    );
  }
}
