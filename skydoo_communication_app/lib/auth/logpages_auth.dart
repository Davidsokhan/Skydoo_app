import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './provider.dart';
import './auth.dart';
import '../pages/pro_menu.dart';
import './validators.dart';

class Connectic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      auth: Auth(),
          child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home:  Connecticc(),
      ),
    );
  }
}

class Connecticc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Auth auth = Provider.of(context).auth;
    return StreamBuilder<String>(
      stream: auth.onAuthStateChanged,
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final bool loggedIn = snapshot.hasData;
          return loggedIn ? HomePagess() : LoginPage(); // ProPage()
        }
        return CircularProgressIndicator();
      },
    );
  }
}

class HomePagess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Page'),
        actions: <Widget>[
          FlatButton(
            child: Text("SignOut"),
            onPressed: () async {
              try {
                Auth auth = Provider.of(context).auth;
                await auth.signOut();
              } catch(e) {
                print(e);
              }
            },
            )
        ],
      ),
      body: Container(
        child: Center(
          child: Text('Welcome'),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  String _email, _password;
  FormType _formType = FormType.login;

  bool validate() {
    final form = formKey.currentState;
    form.save();
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void submit() async {
    if (validate()) {
      try {
        final auth = Provider.of(context).auth;
        if (_formType == FormType.login) {
          String userId = await auth.signInWithEmailAndPassword(
            _email,
            _password,
          );

          print('Signed in $userId');
        } else {
          String userId = await auth.createUserWithEmailAndPassword(
            _email,
            _password
            );
            print('Registered in $userId');
        }
      } catch(e) {
        print(e);
      }
    }
  }

  void switchFormState(String state) {
    formKey.currentState.reset();

    if(state == 'register') {
      setState(() {
        _formType = FormType.register;
      });
    } else {
      setState(() {
        _formType = FormType.login;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: buildInputs() + buildButtons(),
          ),
        ),
      ),
    );
  }

  List<Widget> buildInputs() {
    return [
      TextFormField(
        validator: EmailValidator.validate,
        decoration: InputDecoration(labelText: 'Email'),
        onSaved: (value) => _email = value,
      ),
      TextFormField(
        validator: PasswordValidator.validate,
        decoration: InputDecoration(labelText: 'Password'),
        obscureText: true,
        onSaved: (value) => _password = value,
      ),
    ];
  }

  List<Widget> buildButtons() {
    if (_formType == FormType.login) {
      return [
        RaisedButton(
          child: Text('login'),
          onPressed: submit,
        ),
        FlatButton(
          child: Text('Register Account'),
          onPressed: (){
            switchFormState('register');
          },
        )
      ];
    } else {
      return [
        RaisedButton(
          child: Text('Create Account'),
          onPressed: submit,
        ),
        FlatButton(
          child: Text('Go to Login'),
          onPressed: (){
            switchFormState('login');
          },
        )
      ];
    }
  }
}