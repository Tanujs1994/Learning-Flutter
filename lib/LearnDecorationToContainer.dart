// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
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
        title: Text('Dashboard'),
      ),
    body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
          color: Colors.blueGrey,
          // borderRadius: BorderRadius.only(topLeft: Radius.circular(21),bottomRight: Radius.circular(21)),
          border: Border.all(
            width: 5,
            color: Colors.black,
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 51,
              color: Colors.grey,
              spreadRadius: 21,
            )
          ],
          shape: BoxShape.rectangle,
        ),
      ),
    ),
    )
    );
  }
}
