// ignore_for_file: prefer_const_constructors, avoid_print, avoid_unnecessary_containers
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
        title: Text('Hello'),
      ),
    body: Center(
      child: InkWell(
        onTap: (){
          print("Tapped on Container");
        },
        child: Container(
          height: 200,
          width: 200,
          color: const Color.fromRGBO(76, 175, 80, 1),
          child: Center(
            child: InkWell(
              onTap: (){
                print("Text Widget Rapped!");
              },

              child: Text(
                'Click here',
                style: TextStyle(fontSize:20,fontWeight: FontWeight.w700),))),
        ),
        onDoubleTap: (){
          print("Double Tap on Container");

        },
        onLongPress: (){
          print("Long Pressed on Container");

        },
      ),
    )
    );
  }
}
