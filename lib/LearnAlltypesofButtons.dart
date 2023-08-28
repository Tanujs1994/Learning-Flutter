// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Container'),
      ),
    body: Column(
      children: [
          ElevatedButton(
            child: Text('PLay'),
            onPressed:(){
              print('Songs');
            }
            ),
          TextButton(
              child: Text('Click here!!'),
              onPressed: (){
                print('Text Button Tapped!');
              },
              onLongPress:(){
                print('Laung mai Elachi');
              }
              ),
              OutlinedButton(onPressed: (){
                print('hello!');
              }, child:Text ('open'), ),
             
      ],

    ) 
    
      
      
    );
    
  }
}
