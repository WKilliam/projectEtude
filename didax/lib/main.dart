import 'dart:html';

import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "DIDAX",
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _Home();
  }
}

class _Home extends State<Home>{



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('DIDAX'),// place le titre de la app  barre
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          onPressed: (){
            print('good');
          }),//place une icon
        elevation: 10.0,//met de l'ombre
        centerTitle: true,//centre le titre
      ),

      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color(0xff1b202b),
        child: new Center(
          child: new Card(
            child: new Container(
              color: const Color(0xff1b202b),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: new Stack(
                  children: <Widget>[
                    Center(
                      child: new Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Opacity(
                          opacity: 0.2,
                          child: new Image.network('image/mycode.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        new Container(
                            color: Colors.blue,
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/1.5,
                            margin: EdgeInsets.only(top: 10.0,bottom: 15.0),
                            child: new RaisedButton(
                              onPressed: () => print("Container pressed"), // handle your onTap here
                              child: Container(
                                  color: const Color(0xff1b202b),
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(top: 10.0,bottom: 15.0),
                                  child: new Image.network('image/codeur.jpg',fit: BoxFit.cover,),
                              ),
                            ),
                        ),
                        new Container(
                          color: Colors.blue,
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/1.5,
                          margin: EdgeInsets.only(top: 10.0,bottom: 15.0),
                          child: new RaisedButton(
                            onPressed: () => print("Container pressed"), // handle your onTap here
                            child: Container(
                              color: const Color(0xff1b202b),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top: 10.0,bottom: 15.0),
                              child: new Image.network('image/hunter.png',fit: BoxFit.cover,),
                            ),
                          ),
                        ),
                        new Container(
                          color: Colors.blue,
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/1.5,
                          margin: EdgeInsets.only(top: 10.0,bottom: 15.0),
                          child: new RaisedButton(
                            onPressed: () => print("Container pressed"), // handle your onTap here
                            child: Container(
                              color: const Color(0xff1b202b),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                              child: new Image.network('image/entreprise.png',fit: BoxFit.cover,),
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new Container(

                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/1.5,
                            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/1.4,bottom: 15.0),
                            child: new Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Theme.of(context).primaryColor,
                              elevation: 10.0,
                              child: new Center(
                                child: new Text('YOLO',textAlign: TextAlign.center,),
                              ),
                            ),
                          ),
                        ])
                    ]
              ),
            ),
          ),
        ),
      )


    );

        /**
        child: new Center(
          child: new Container(
            child :new Card(
              elevation: 5.0,
              color: const Color(0xff1b202b),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              child: new Container(
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.height/2,
                child: new Image.network('image/puce.jpg', fit: BoxFit.cover),
              )
            ),
            ),
          ),
         **/

  }
}