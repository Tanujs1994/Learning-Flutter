// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
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
    body: Center(
      child: CircleAvatar(
          child: Container(
            width: 50,
            height: 50,
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 20,
                  child: Image.asset('assets/images/bird.png',)),
                Text('Name')
            ],
            ),
          ),
        //  backgroundImage: AssetImage('assets/images/pic.jpg'),
         backgroundColor: Color.fromARGB(255, 225, 130, 29),  
        maxRadius: 50, 
      ),
    )
    );
  }
}
