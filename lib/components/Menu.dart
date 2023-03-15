
import 'package:flutter/material.dart';

import '../screens/About.dart';
import '../screens/Calculator.dart';

Widget Menu(BuildContext context){
  return Drawer(
      child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              margin: EdgeInsets.only(bottom: 10.0),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,

                        image:
                        NetworkImage("https://www.pngall.com/wp-content/uploads/5/Profile-PNG-File.png"))),
              ),
              accountName: new Container(
                  child: Text(
                    'Vagner Mancini',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  )),
              accountEmail: new Container(
                  child: Text(
                    'Vagner Mancini@git.com',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            ListTile(
              title: Text("Calculadora"),
              onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Calculator()),);
              },
            ),
            ListTile(
              title: Text("About"),
              onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),);
              },
            ),
          ]
      )
  );
}