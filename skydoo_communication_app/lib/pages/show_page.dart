import 'package:flutter/material.dart';
import './main_page.dart';

class ShowPage extends StatelessWidget {
  Widget build (BuildContext context) {
    return new Scaffold(
    body: new Stack(
      children: <Widget>[
        new Container(
          child: new InkWell(
            onTap: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new ShowPage2()), (Route route) => route == null),
          ),
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("assets/images/skydooshow1.png"), fit: BoxFit.cover,),
          ),
        ),
        Positioned(top: 625, left: 10,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new InkWell(
                child: new IconButton(
                  icon: new Icon(Icons.keyboard_return),
                  color: Colors.black,
                  iconSize: 50.0,
                  onPressed: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new MainPage()), (Route route) => route == null)
                )
              )
            ]
          )
        ) 
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
            onTap: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new ShowPage3()), (Route route) => route == null),
          ),
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("assets/images/skydoo_show2.png"), fit: BoxFit.cover,),
          ),
        ),
        Positioned(top: 625, left: 10,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new InkWell(
                child: new IconButton(
                  icon: new Icon(Icons.keyboard_return),
                  color: Colors.black,
                  iconSize: 50.0,
                  onPressed: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new ShowPage()), (Route route) => route == null)
                )
              )
            ]
          )
        ) 
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
            onTap: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new ShowPage4()), (Route route) => route == null),
          ),
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("assets/images/skydoo_show3.png"), fit: BoxFit.cover,),
          ),
        ),
        Positioned(top: 625, left: 10,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new InkWell(
                child: new IconButton(
                  icon: new Icon(Icons.keyboard_return),
                  color: Colors.black,
                  iconSize: 50.0,
                  onPressed: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new ShowPage2()), (Route route) => route == null)
                )
              )
            ]
          )
        ) 
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
            onTap: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new MainPage()), (Route route) => route == null),
          ),
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("assets/images/skydoo_show4.png"), fit: BoxFit.cover,),
          ),
        ),
        Positioned(top: 625, left: 10,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new InkWell(
                child: new IconButton(
                  icon: new Icon(Icons.keyboard_return),
                  color: Colors.black,
                  iconSize: 50.0,
                  onPressed: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new ShowPage3()), (Route route) => route == null)
                )
              )
            ]
          )
        ) 
      ],
    )
  );
  }
}