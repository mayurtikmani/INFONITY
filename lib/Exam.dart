import 'package:flutter/material.dart';
import 'Snap.dart';
import 'Mhcet.dart';
import 'Jee.dart';
import 'Ielts.dart';
import 'Gujcet.dart';
import 'Gre.dart';
import 'Cat.dart';

class Exam extends StatefulWidget {
  @override
  State createState() => new ExamState();  
}

class ExamState extends State<Exam>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: new Text("Exams",
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
                        child: Text("CAT",
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cat()),
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
                        child: Text("GRE",
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Gre()),
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
                        child: Text("GUJCET",
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Gujcet()),
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
                        child: Text("IELTS",
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Ielts()),
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
                        child: Text("JEE",
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Jee()),
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
                        child: Text("MHCET",
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Mhcet()),
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
                        child: Text("SNAP",
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Snap()),
                          );
                        },
                      )
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