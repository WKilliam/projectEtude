import 'dart:html';
import 'package:flutter/material.dart';



class PageInscription extends StatefulWidget{
  @override
   _PageInscriptionState createState() => new _PageInscriptionState();
}

class _PageInscriptionState extends State<PageInscription>{
  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    double hauteur = MediaQuery.of(context).size.height;
    String mail ;
    String motdepass;
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
        elevation: 10.0,//met de l'ombre
        centerTitle: true,//centre le titre
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
        child: new Container(
          color: const Color(0xff1b202b),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: new Stack(
            children: [
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
              new Center(
                child: Opacity(
                  opacity: 0.4,
                  child:Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  margin: EdgeInsets.only(left:10,right:10,top: 10.0,bottom: 15.0),
                  color: Theme.of(context).primaryColor,
                ),
                )
              ),
              new Center(
                child: Column(
                  children: [
                    new Center(
                      child: new Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/10,
                          margin: EdgeInsets.only(left:20,right:20,top: 15.0,bottom: 20.0),
                          color: Colors.pink,
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            new Text('Inscription'),
                          ],
                        )
                      ),
                    ),
                    new Center(
                      child: new Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height/10,
                          margin: EdgeInsets.only(left:20,right:20,bottom: 10.0),
                          color: Colors.pink,
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              new Text('Mail'),
                              new TextField(
                                onChanged: (String string){
                                setState(() {
                                  mail = string;
                                });
                              },
                                onSubmitted: (String string){
                                  setState(() {
                                    mail = string;
                                  });
                                },
                              )
                            ],
                          )
                      ),
                    ),
                    new Center(
                      child: new Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height/10,
                          margin: EdgeInsets.only(left:20,right:20,bottom: 10.0),
                          color: Colors.pink,
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              new Text('Mot de passe'),
                              new TextField(
                                onChanged: (String string){
                                  setState(() {
                                    motdepass = string;
                                  });
                                },
                                onSubmitted: (String string){
                                  setState(() {
                                    motdepass = string;
                                  });
                                },
                              )
                            ],
                          )
                      ),
                    ),
                    new Center(
                      child: new Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height/10,
                          margin: EdgeInsets.only(left:20,right:20,bottom: 10.0),
                          color: Colors.pink,
                          child: RaisedButton(
                            onPressed: (){print("what do you do ?"+mail+"   MDP "+motdepass);},
                            color: Colors.green[800],
                            elevation: 10.0,
                          ),
                      ),
                    ),
                  ],

                ),
              )
            ],
          )
        )
      )
    );
  }
}
