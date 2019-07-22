import 'package:flutter/material.dart';
import 'login_page.dart';
import 'main_page.dart';

class ProPage extends StatelessWidget {

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final presentaionButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new MainPage()), (Route route) => route == null),
          child: Text("User",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)
                ),
        ),
    );

    final informationButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          //onPressed: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new LoginPage()), (Route route) => route == null),
          child: Text("Pro",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)
                ),
        ),
    );

    final optionButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          //onPressed: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new MainPage()), (Route route) => route == null),
          child: Text("Option",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)
                ),
        ),
    );

    return Scaffold(
      backgroundColor: Colors.white24,
      body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white24,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "assets/images/skydoo_logo_noir.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                presentaionButton,
                SizedBox(height: 25.0),
                informationButton,
                SizedBox(height: 25.0),
                //optionButton,
                SizedBox(
                  height: 202.0,
                ),
              ],
            ),
          ),
        ),
      ),
        )
    );
  }
}