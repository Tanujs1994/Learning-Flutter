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
        title: Text('Hello '),
      ),
    body: Container(
      child: Column(
        children: [

        CatItems(),
        Contact(),
        SubCatItems(),
        SubBottoms(),

        
         
          
        ],

      )
      ,
    )
    );
  }
}
 
class CatItems extends StatelessWidget{
  Widget build (BuildContext context) {
    return  Expanded(
          flex: 2,
           child: Container(
            
            color: Colors.blue,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(11),
                child: SizedBox(
                  width: 100,
                  child: CircleAvatar(
                    backgroundColor:Color.fromARGB(255, 48, 231, 79) ),
                ),
                
                ),
                itemCount: 20,
                
                ),
                
           ),
         );
  }
  
}


class Contact extends StatelessWidget{
  Widget build (BuildContext context) {
    return Expanded(
          flex: 4,
           child: Container(
            color: Colors.orange,
            child: ListView.builder(
              itemBuilder:(context, index) => 
              Padding(padding: const EdgeInsets.all(8),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green
                  ),
                  title: Text('Name'),
                  subtitle: Text('Mob No'),
                  trailing: Icon(Icons.delete),
                  ),

              ), 
              itemCount: 10,
              ),


            ),
         );
  }}

  class SubCatItems extends StatelessWidget{
  Widget build (BuildContext context) {
    return  Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey,
             child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Color.fromARGB(255, 205, 57, 8),
                  
                  ),

                ),
                ),
                itemCount: 10,scrollDirection: Axis.horizontal,
                ),
            ),
          );
  }}

class SubBottoms extends StatelessWidget{
  Widget build (BuildContext context) {
    return Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              child: GridView.count(crossAxisCount: 4,
              children: [
                Padding(
                  padding:const EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue
                    ),
                  ),
                   ),

                   Padding(
                  padding:const EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue
                    ),
                  ),
                   ),


                   Padding(
                  padding:const EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue
                    ),
                  ),
                   ),

                   Padding(
                  padding:const EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue
                    ),
                  ),
                   ),
              ],
              
              ),
            ),
          );
  }}



