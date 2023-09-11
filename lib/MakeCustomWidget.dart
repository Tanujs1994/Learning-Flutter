// ignore_for_file: prefer_const_constructors, avoid_print, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_basics/UI_Helper/util.dart';
import 'package:flutter_basics/widgets/roundedBttn.dart';

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
        title: Text('Hello '),
      ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 70,
            child: RoundedButton(
             btnName:  'Play',
             icon: Icon(Icons.play_arrow),
             callBAck: () {
             print('Playing...');
            },
            textStyle: mTextstyle16(),
          
             ),
          ),

          Container(
            height: 11,
          ),

          Container(
        width: 150,
        height: 70,
        child: RoundedButton(
         btnName:  'Press',
         callBAck: () {
         print('Logged in!!');
        },
        bgColor: Colors.red,
        textStyle: mTextstyle21(),
      
         ),
      ),
        ],
      ),
    )
    );
  }
  
}

