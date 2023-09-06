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

var arrNames = ['Raman','Ramanujan','Rajesh','James','john','Rahim','Ram','Seeta','Siya'];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Hello'),
      ),
    // body: ListView(
    //   scrollDirection: Axis.vertical,
    //   reverse: true,
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Text("One",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Text("Two",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Text("Three",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Text("Four",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Text("Five",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
    //     ),




    //   ],
    // ),
    body: ListView.separated(itemBuilder: (context, index){
      return Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(arrNames[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
                Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(arrNames[index],style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500),),
          ),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(arrNames[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
          ),
        ],
      );
    },
    itemCount: arrNames.length,
    separatorBuilder: (context, index){
      return Divider(height: 100,thickness: 2,);
    }
    
    ),
    );
  }
}
