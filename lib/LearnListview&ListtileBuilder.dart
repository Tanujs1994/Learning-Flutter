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
    
    body: ListView.separated(itemBuilder: (context, index){
      return ListTile(
        leading:Text('${index+1}') ,
        title:Text(arrNames[index]) ,
        subtitle:Text('Number') ,
        trailing:Icon(Icons.add) ,
      );

    },
    itemCount: arrNames.length,
    separatorBuilder: (context, index){
      return Divider(height: 20,thickness: 2,);
    }
    
    ),
    );
  }
}
