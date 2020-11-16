import 'dart:ui';

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.greenAccent
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile UI'),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.green[300],
                Colors.green[50]
              ]

            )
          ),
          child: Column(
            children: <Widget>[
               CircleAvatar(
                 radius: 80,
                 backgroundImage: AssetImage("images/fahad.jpg"),
               ),
               ListTile(
                 title: Center(child: Text('Mohammad Fahad', style: TextStyle(fontSize: 20),)),
                 subtitle: Center(child: Text("Flutter Apps Developer", style: TextStyle(fontSize: 15),)),
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget> [
                     RaisedButton(
                 onPressed: (){

                 },
                 child: Text("Message"),
               ),
                RaisedButton(
                 onPressed: (){

                 },
                 child: Text("Hire Me"),
               ),
                  ],
                ),
                

              
               ListTile(
                 title: Text('About Me', style: TextStyle(fontSize: 20),),
                 subtitle: Text('Working at TeaM_CC from 2018. Studying at North South University. For more information ' + 
                 'visit my github profile: https://github.com/MohammadFahad07 \n' + 
                 'Email me: fahad.mojumder@northsouth.edu', style: TextStyle(fontSize: 16),),
               ),
             
            ]
          ),
        ) 
        //Image.asset("images/fahad.jpg", width: 200, height: 100),
      ),
    );
  }
}