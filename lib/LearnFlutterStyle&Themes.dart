// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_basics/UI_Helper/util.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,),
          subtitle1:  TextStyle(fontSize: 11,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),
          headline2: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.green),
          subtitle2: TextStyle(fontSize: 11,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic,color: Colors.pink),
        ),
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
        backgroundColor: Colors.red,
        title: Text('Flutter Container'),
      ),
    body: Column(
      children: [
        Text('Text 1',style:Theme.of(context).textTheme.headline1!.copyWith(color: Colors.yellow),),
        Text('Text 2',style:Theme.of(context).textTheme.subtitle1,),
        Text('Text 3',style:Theme.of(context).textTheme.headline2),
        Text('Text 4',style:mTextstyle11(textColor: Colors.blue),),

      ],
    ),
    );
  }
}
