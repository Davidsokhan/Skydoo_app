import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Account extends StatefulWidget {
  @override
  final TextEditingController mail;
  final TextEditingController pwd;

  Account(this.mail, this.pwd);
  AccountState createState() => AccountState();
}

class AccountState extends State<Account> {

  void SetUser() {
    Firestore.instance.collection('user').add({
      "login": widget.mail,
      "password": widget.pwd
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New account')),
      body: new StreamBuilder(
        stream: Firestore.instance.collection('user').snapshots(),
        builder: (context, snapshot) {
          if(!snapshot.hasData) {
            return new Text("Connecting...");
          }
          return new ListView.builder(
            itemCount: snapshot.data.documents.lenght,
            itemBuilder: (context, index) {
              DocumentSnapshot ds = snapshot.data.documents[index];
              return new Text(ds['login']);
            },
          );
        }
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Firestore.instance.collection('user').document().setData({'login' : widget.mail.text, 'password' : widget.pwd.text});
        },
      ),
    );
  }


}
