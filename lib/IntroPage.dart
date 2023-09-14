// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'Switching_One_Screen_to_Another_screen(Intro.dart).dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Intro')),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome', style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 12,
            ),
      
      
          ElevatedButton(onPressed: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyHomePage(title: 'Tanuj'),
          
          ));
          
          }, child: Text('Next'),
           style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange
            )
          ),
          
      
      
          ],
          
        ),
      ),
    );
  }

}