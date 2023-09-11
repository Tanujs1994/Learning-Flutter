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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Hello '),
      ),
    body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Wrap(
        direction: Axis.vertical,
        alignment: WrapAlignment.spaceEvenly,
        spacing: 11,
        runSpacing: 11,
        children: [
          Container(
            width: 70,
            height: 70,
            color: Colors.deepOrangeAccent
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.brown,
          ),
          Container(
    
            width: 70,
            height: 70,
            color: Colors.blue,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.orange,
          ),
          Container(
            width: 70,
            height: 70,
            color: Color.fromARGB(255, 29, 49, 109),
          ),
           Container(
            width: 70,
            height: 70,
            color: Colors.grey,
          ),
           Container(
            width: 70,
            height: 70,
            color: Colors.pink,
          ),
           Container(
            width: 70,
            height: 70,
            color: Colors.black,
          ),
           Container(
            width: 70,
            height: 70,
            color: Colors.green,
          ),
          Container(
            width: 70,
            height: 70,
            color: const Color.fromARGB(255, 23, 23, 23),
          ),
           Container(
            width: 70,
            height: 70,
            color: Color.fromARGB(255, 86, 193, 14),
          ),
           Container(
            width: 70,
            height: 70,
            color: Color.fromARGB(255, 37, 70, 110),
          ),
           Container(
            width: 70,
            height: 70,
            color: const Color.fromARGB(255, 23, 23, 23),
          ),
      
        ],
      ),
    )
    );
  }
}
