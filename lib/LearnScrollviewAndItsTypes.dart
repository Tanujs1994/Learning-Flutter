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
        title: Text('Hello'),
      ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: SingleChildScrollView(
           child: Column(
             children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.green,
                      ),
                       Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.grey,
                      ), Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ), Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ),
              ),
                Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
              
                color: Colors.red,
              ),
               Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
               
                color: Colors.blue,
              ), Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                
                color: Color.fromARGB(255, 3, 244, 188),
              ), Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
             
                color: Colors.green,
              ), Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
               
                color: const Color.fromARGB(255, 45, 47, 45),
              ), Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
               
                color: Color.fromARGB(255, 24, 100, 144),
              ), Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
               
                color: Color.fromARGB(255, 148, 209, 150),
              ), Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
              
                color: Colors.green,
              ),
             ],
             
           ),
         ),
       ),   
    );
  }
}
