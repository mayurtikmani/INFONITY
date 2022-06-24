import 'package:flutter/material.dart';
import 'package:infonity/Passport.dart';
import 'package:infonity/Visa.dart';
import 'Visa.dart';
import 'Passport.dart';
import 'Irctc.dart';

class Travel extends StatefulWidget {
  @override
  State createState() => new TravelState();  
}

class TravelState extends State<Travel>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: new Text("Travel Forms",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
      ),
      body: new Stack(fit: StackFit.expand, children: <Widget>[
        new Image(
          image: new AssetImage("assets/background.jpg"),
          fit: BoxFit.cover,
          colorBlendMode: BlendMode.hardLight,
          color: Colors.black38,
        ),
        new Theme(
          data: new ThemeData(
              brightness: Brightness.dark,
              inputDecorationTheme: new InputDecorationTheme(
                // hintStyle: new TextStyle(color: Colors.blue, fontSize: 20.0),
                labelStyle:
                    new TextStyle(color: Colors.white, fontSize: 50.0),
              )),
          isMaterialAppTheme: true,
          child: new Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(left: 5,right: 5),
                
                child: new Form(
                  autovalidate: true,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                      ),
                      new MaterialButton(
                        height: 50.0,
                        minWidth: 200.0,
                        color: Colors.cyan,
                        splashColor: Colors.blue,
                        textColor: Colors.black,
                        child: Text("Passport",
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Passport()),
                          );
                        },
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                      ),
                      new MaterialButton(
                        height: 50.0,
                        minWidth: 200.0,
                        color: Colors.cyan,
                        splashColor: Colors.blue,
                        textColor: Colors.black,
                        child: Text("Visa",
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Visa()),
                          );
                        },
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                      ),
                      new MaterialButton(
                        height: 50.0,
                        minWidth: 200.0,
                        color: Colors.cyan,
                        splashColor: Colors.blue,
                        textColor: Colors.black,
                        child: Text("IRCTC",
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Irctc()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}