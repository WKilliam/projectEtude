import 'dart:html';
import 'PageInscription.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'DIDAX',
      theme: new ThemeData(
        primarySwatch: Colors.grey
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
        title: new Text('DIDAX',
          textAlign: TextAlign.center,
          textScaleFactor: 2.0,
          style: new TextStyle(
              color: Colors.black,
              fontSize: 10.0,
              fontStyle: FontStyle.italic
          ),),// place le titre de la app  barre
        actions: [
          new IconButton(icon: new Icon(Icons.account_circle), onPressed: (){inscriptionPage();}),
          //new IconButton(icon: new Icon(Icons.account_box), onPressed: (){print("totototto");})
        ],//place une icon
        elevation: 10.0,//met de l'ombre
        centerTitle: true, //centre le titre
      ),
        drawer: Drawer(
            child: Drawer(
              // Add a ListView to the drawer. This ensures the user can scroll
              // through the options in the drawer if there isn't enough vertical
              // space to fit everything.
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Text('Drawer Header'),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  ListTile(
                    title: Text('Item 1'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: Text('Item 2'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            )// Populate the Drawer in the next step.
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
                            height: MediaQuery.of(context).size.height/1.3,
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
                          height: MediaQuery.of(context).size.height/1.3,
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
                          height: MediaQuery.of(context).size.height/1.3,
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
                            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/1.2,bottom: 15.0),
                            //color: Colors.blue,
                            child:  new Center(
                                child: new Text('Demandeur D\'emploi',
                                  textAlign: TextAlign.center,
                                textScaleFactor: 2.0,
                                style: new TextStyle(
                                  color: const Color(0xffffffcc),
                                  fontSize: 10.0,
                                  fontStyle: FontStyle.italic
                                ),),
                              ),
                            ),
                          new Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/1.5,
                            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/1.2,bottom: 15.0),
                            //color: Colors.blue,
                            child:  new Center(
                              child: new Text('Recruteur',
                                textAlign: TextAlign.center,
                                textScaleFactor: 2.0,
                                style: new TextStyle(
                                    color: const Color(0xffffffcc),
                                    fontSize: 10.0,
                                    fontStyle: FontStyle.italic
                                ),),
                            ),
                          ),
                          new Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.height/1.5,
                            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/1.2,bottom: 15.0),
                            //color: Colors.blue,
                            child:  new Center(
                              child: new Text('Entreprise',
                                textAlign: TextAlign.center,
                                textScaleFactor: 2.0,
                                style: new TextStyle(
                                    color: const Color(0xffffffcc),
                                    fontSize: 10.0,
                                    fontStyle: FontStyle.italic
                                ),),
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
  }

  void inscriptionPage(){
    Navigator.push(context, new MaterialPageRoute(builder:(BuildContext context){
      return new PageInscription();
    }));
  }
}