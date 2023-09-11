// ignore_for_file: prefer_const_constructors
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
    var arrColors = [Colors.black,
    Colors.grey,
    Colors.blue,
    Colors.orange,
    Colors.pink,
    Colors.red,
    Colors.green,
    Colors.brown,
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Container'),
      ),
    body: Column(
      children: [
        GridView.count(crossAxisCount: 4,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11,
        children:[
          Container(color: arrColors[0]),
          Container(color: arrColors[1],),
          Container(color: arrColors[2],),
          Container(color: arrColors[3],),
          Container(color: arrColors[4],),
          Container(color: arrColors[5],),
          Container(color: arrColors[6],),
          Container(color: arrColors[7],),
        
         
          ],

          ),
           Container(
            height: 100,
          ),
          GridView.count(crossAxisCount: 4,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11,
          children: [
          Container(color: arrColors[0]),
          Container(color: arrColors[1],),
          Container(color: arrColors[2],),
          Container(color: arrColors[3],),
          Container(color: arrColors[4],),
          Container(color: arrColors[5],),
          Container(color: arrColors[6],),
          Container(color: arrColors[7],),
         
          
        ],
        ),
      ],
    ));
  }
}
