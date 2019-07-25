import 'package:flutter/material.dart';
import 'package:skydoo_communication_app/pages/user_menu.dart';
import 'login_page.dart';
import 'user_menu.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) :super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => new HomePageState();
}
class HomePageState extends State<HomePage>  {

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  Future<bool> _onWillPop() {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an App'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    ) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final userButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage())),
          child: Text("User",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)
                ),
        ),
    );

    final proButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage())),
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

    return new WillPopScope(
       onWillPop: _onWillPop,
       child: new Scaffold(
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
                userButton,
                SizedBox(height: 25.0),
                proButton,
                SizedBox(height: 25.0),
                optionButton,
                SizedBox(
                  height: 202.0,
                ),
              ],
            ),
          ),
        ),
      ),
        )
       )
    );
  }
  
// @override
//   Widget build(BuildContext context) {
//     return new WillPopScope(
//       onWillPop: _onWillPop,
//       child: new Scaffold(
//         appBar: new AppBar(
//           title: new Text("Home Page"),
//         ),
//         body: new Center(
//           child: new Text("Home Page"),
//         ),
//       ),
//     );
//   }

}