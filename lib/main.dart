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
        title: Text('Flutter Container'),
      ),
    body: Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            
            height: 100,
            color: Colors.blue,
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
           
            height: 100,
            color: Colors.orange,
          ),
        ),
     Expanded(
      flex: 2,
      child: 
        Container(
          height: 100,
          color: Colors.green,
        ),),
        Expanded(
          flex: 1,
          child: Container(
           
            height: 100,
            color: Colors.pink,
          ),
        )

      ],
    ),
    );
  }
}
