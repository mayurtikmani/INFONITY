import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Exam.dart';
import 'Goverment.dart';
import 'Travel.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();  
}

class LoginPageState extends State<LoginPage> {
   @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: new Center(
          child: new Text("INFO-NITY",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
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
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: new Form(
                  autovalidate: true,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.only(top: 70.0),
                      ),
                      new Image(
                        image: new AssetImage("assets/logo.png"),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 45.0),
                      ),
                      new MaterialButton(
                        height: 60.0,
                        minWidth: 200.0,
                        color: Colors.cyan,
                        splashColor: Colors.blue,
                        textColor: Colors.white,
                        child: new Text("Exams",
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.black
                          ), 
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Exam()),
                          );
                        },
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                      ),
                      new MaterialButton(
                        height: 60.0,
                        minWidth: 200.0,
                        color: Colors.cyan,
                        splashColor: Colors.blue,
                        child: Text("Goverment form",
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Goverment()),
                          );
                        },
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                      ),
                      new MaterialButton(
                        height: 60.0,
                        minWidth: 200.0,
                        color: Colors.cyan,
                        splashColor: Colors.blue,
                        child: Text("Travel",
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.black
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Travel()),
                          );
                        },
                      ),
                      new Padding(padding: const EdgeInsets.only(top: 90.0)),
                      Text("Developed By",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 20.0
                        ),
                      ),
                      new Padding(padding: const EdgeInsets.only(top: 5.0)),
                      Text("Mayur Tikmani",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 10.0
                        ),
                      ),
                      new Padding(padding: const EdgeInsets.only(top: 5.0)),
                      Text("MalharSingh",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 10.0
                        ),
                      ),
                      new Padding(padding: const EdgeInsets.only(top: 5.0)),
                      Text("Jil Valsadia",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 10.0
                        ),
                      ),
                      new Padding(padding: const EdgeInsets.only(top: 5.0)),
                      Text("Gautam Suthar",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 10.0
                        ),
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


