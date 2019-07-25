import 'package:flutter/material.dart';
import './main_page.dart';
import './info_page.dart';

class ShowPage extends StatelessWidget {
  Widget build (BuildContext context) {
    return new Scaffold(
    body: new Stack(
      children: <Widget>[
        new Container(
          child: new InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ShowPage2())),
          ),
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("assets/images/skydooshow1.png"), fit: BoxFit.cover,),
          ),
        ),
      ],
    )
  );
  }
}

class ShowPage2 extends StatelessWidget {
  Widget build (BuildContext context) {
    return new Scaffold(
    body: new Stack(
      children: <Widget>[
        new Container(
          child: new InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ShowPage3())),
          ),
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("assets/images/skydoo_show2.png"), fit: BoxFit.cover,),
          ),
        ),
      ],
    )
  );
  }
}

class ShowPage3 extends StatelessWidget {
  Widget build (BuildContext context) {
    return new Scaffold(
    body: new Stack(
      children: <Widget>[
        new Container(
          child: new InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ShowPage4())),
          ),
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("assets/images/skydoo_show3.png"), fit: BoxFit.cover,),
          ),
        ),
      ],
    )
  );
  }
}

class ShowPage4 extends StatelessWidget {
  Widget build (BuildContext context) {
    return new Scaffold(
    body: new Stack(
      children: <Widget>[
        new Container(
          child: new InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => InfoPage())),
          ),
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("assets/images/skydoo_show4.png"), fit: BoxFit.cover,),
          ),
        ),
      ],
    )
  );
  }
}