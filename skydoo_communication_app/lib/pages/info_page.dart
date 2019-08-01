import 'package:flutter/material.dart';
import 'pro_menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InfoPage extends StatefulWidget {
  @override
  InfoPageState createState() => InfoPageState();
}

class InfoPageState extends State<InfoPage> {

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final nameField = TextField(
      controller: nameController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10.0, 7.0, 10.0, 7.0),
          hintText: "Name",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final lastNameField = TextField(
      controller: lastNameController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10.0, 7.0, 10.0, 7.0),
          hintText: "Last Name",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

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

    final phoneField = TextField(
      controller: phoneController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Phone Number",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final sendButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          child: Text("Send",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)
                ),
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            if (nameController.text.isNotEmpty && lastNameController.text.isNotEmpty
            && emailController.text.isNotEmpty && phoneController.text.isNotEmpty) {
                Firestore.instance
                  .collection('client')
                  .add({
                    "name": nameController.text,
                    "last name": lastNameController.text,
                    "email": emailController.text,
                    "phone": phoneController.text
                })
                .then((result) => {
                  Navigator.pop(context),
                  nameController.clear(),
                  lastNameController.clear(),
                  emailController.clear(),
                  phoneController.clear(),
                })
                .catchError((err) => print(err));
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProPage()));
            }
          }
        )
    );

    return Scaffold(
      backgroundColor: Colors.white24,
      body: Padding(
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
                Row(
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                        width: 110.0,
                        child: nameField,
                      ),
                      SizedBox(width: 15.0),
                      SizedBox(
                        height: 50.0,
                        width: 160.0,
                        child: lastNameField,
                      ),
                      //lastNameField,
                    ],
                  ),
                SizedBox(height: 25.0),
                emailField,
                SizedBox(height: 25.0),
                phoneField,
                SizedBox(height: 35.0),
                sendButton,
                SizedBox(
                  height: 117.0,
                ),
              ],
            ),
          ),
    );
  }
}