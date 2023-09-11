// ignore_for_file: prefer_const_constructors, deprecated_member_use
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
    // body: ConstrainedBox(
    //   constraints: BoxConstraints(
    //     minWidth: 200,
    //     minHeight: 40,
    //     maxHeight: 50,
    //     maxWidth: 300,
    //   ),
      body: Wrap(
        direction: Axis.vertical,
        children: [
          SizedBox.square(
            dimension: 100,
             
            child: ElevatedButton(
              onPressed: (){
          
          
              },
               style : ElevatedButton.styleFrom(
           primary:Colors.amberAccent,
           shadowColor: Colors.amber,
           shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(0),
            // topRight:Radius.circular(21),
            // bottomLeft: Radius.circular(21) 
            )
           ) 
          ),
              child:Text('Click') ),
          ),

          SizedBox(
            height: 20,
          ),


       SizedBox.square(
            dimension: 100,
             
            child: ElevatedButton(
              onPressed: (){
          
          
              },
               style : ElevatedButton.styleFrom(
           primary:Colors.amberAccent,
           shadowColor: Colors.amber,
           shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(0),
            // topRight:Radius.circular(21),
            // bottomLeft: Radius.circular(21) 
            )
           ) 
          ),
              child:Text('Click') ),
          ),


            SizedBox(
              height: 50,
            ),


          SizedBox.square(
            dimension: 100,
             
            child: ElevatedButton(
              onPressed: (){
          
          
              },
               style : ElevatedButton.styleFrom(
           primary:Colors.amberAccent,
           shadowColor: Colors.amber,
           shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(0),
            // topRight:Radius.circular(21),
            // bottomLeft: Radius.circular(21) 
            )
           ) 
          ),
              child:Text('Click') ),
          ),
        ],
      
      ),
    );
    
  }
}
