import 'package:flutter/material.dart';
import 'login_page.dart';

class CreatePage extends StatefulWidget {
  @override
  CreatePageState createState() => CreatePageState();
}

class CreatePageState extends State<CreatePage> {

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      controller: emailController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextField(
      controller: passwordController,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final createButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new LoginPage()), (Route route) => route == null),
          child: Text("Create account",
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
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(height: 35.0),
                createButton,
                SizedBox(
                  height: 192.0,
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