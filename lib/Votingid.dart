import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class Votingid extends StatefulWidget {
  @override
  State createState() => new VotingidState();  
}

class VotingidState extends State<Votingid>{
  String assetPDFPath = "";
  String urlPDFPath = "";
  
  @override
  void initState() {
    super.initState();

    getFileFromAsset("assets/votingid.pdf").then((f) {
      setState(() {
        assetPDFPath = f.path;
        print(assetPDFPath);
      });
    });
  }

  Future<File> getFileFromAsset(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/votingid.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Error opening asset file");
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Voting Card",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
      ),
      body: new Stack(fit: StackFit.expand, children: <Widget>[
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
                child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                  ),
                  Text("All the steps and information regirding the process of filling the application of Voting ID card are described in the Bellow PDF",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                  ),
                  
                  RaisedButton(
                        color: Colors.cyan,
                        child: Text("Voting card process PDF"),
                        onPressed: () {
                          if (assetPDFPath != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                  PdfViewPage(path: assetPDFPath)
                                )
                            );
                          }
                        },
                      ),
                      new Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                  ),
                  Text("The Official site to fill the Application form is given Bellow",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                  ),

                  Text("https://www.nvsp.in/",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15.0
                    ),                    
                  ),
                ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class PdfViewPage extends StatefulWidget {
  final String path;

  const PdfViewPage({Key key, this.path}) : super(key: key);
  @override
  _PdfViewPageState createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  int _totalPages = 0;
  int _currentPage = 0;
  bool pdfReady = false;
  PDFViewController _pdfViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Voting Card Process PDF"),
      ),
      body: Stack(
        children: <Widget>[
          PDFView(
            filePath: widget.path,
            autoSpacing: true,
            enableSwipe: true,
            pageSnap: true,
            swipeHorizontal: true,
            nightMode: false,
            onError: (e) {
              print(e);
            },
            onRender: (_pages) {
              setState(() {
                _totalPages = _pages;
                pdfReady = true;
              });
            },
            onViewCreated: (PDFViewController vc) {
              _pdfViewController = vc;
            },
            onPageChanged: (int page, int total) {
              setState(() {});
            },
            onPageError: (page, e) {},
          ),
          !pdfReady
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Offstage()
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _currentPage > 0
              ? FloatingActionButton.extended(
                  backgroundColor: Colors.red,
                  label: Text("Go to ${_currentPage - 1}"),
                  onPressed: () {
                    _currentPage -= 1;
                    _pdfViewController.setPage(_currentPage);
                  },
                )
              : Offstage(),
          _currentPage+1 < _totalPages
              ? FloatingActionButton.extended(
                  backgroundColor: Colors.green,
                  label: Text("Go to ${_currentPage + 1}"),
                  onPressed: () {
                    _currentPage += 1;
                    _pdfViewController.setPage(_currentPage);
                  },
                )
              : Offstage(),
        ],
      ),
    );
  }
}