// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
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
        title: Text('myApp'),
      ),
    // body: Row(
    //   children: [
    //     Text('Hello  ',style: TextStyle(fontSize: 16 , color: Colors.grey ),),
    //     Text('World',style: TextStyle(
    //       fontSize: 34,
    //       color: Colors.blue,
    //       fontWeight: FontWeight.bold,
    //     ),),
    //   ],
    // ),
    body: Center(
      child: RichText
      (text: TextSpan(
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        children: <TextSpan>[
           TextSpan(
           text: 'Hello '
           ),
           TextSpan(
           text: 'World!!',
           style: TextStyle(
           color: Colors.blue,
           fontSize: 34,
           fontWeight: FontWeight.bold)
           ),
           TextSpan(
           text: 'Welcome to'
           ),
           TextSpan(
           text: 'Flutter',
           style: TextStyle(
            fontSize: 43,
            color: Colors.orange,
            fontStyle: FontStyle.italic,
            fontFamily: 'FontMain',
           )
          )
        ]
       
    
      )
      ),
    ),
    );
  }
}
