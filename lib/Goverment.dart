import 'package:flutter/material.dart';
import 'Addar.dart';
import 'Pancard.dart';
import 'Votingid.dart';
import 'Driving.dart';


class Goverment extends StatefulWidget {
  @override
  State createState() => new GovermentState();  
}

class GovermentState extends State<Goverment>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: new Text("Goverment Forms",
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
                        child: Text("Aadhaar card",
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Addar()),
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
                        child: Text("Pan Card",
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pancard()),
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
                        child: Text("Voting Card",
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Votingid()),
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
                        child: Text("Driving Licence",
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Driving()),
                          );
                        },
                      ),
                      /*new Padding(
                        padding: const EdgeInsets.only(top: 10.0),
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
                      )*/
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