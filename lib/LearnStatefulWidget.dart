// ignore_for_file: prefer_const_constructors, no_logic_in_create_state, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/foundation.dart';
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
      home: MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Stateful',style: TextStyle(color: Colors.white),)),
        backgroundColor: Color.fromARGB(255, 86, 100, 228),
      ),
      
    body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text('Count: $count',style: TextStyle(fontSize: 20),),
          ElevatedButton(onPressed: (){
            // count = count+1;
            //  count += 1;
           setState(() {
           count++;
             
           });

            print('$count');

          }, child: Text('Increment Count',style: TextStyle(color: Colors.white),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue
          )
          
          )
        ],
      ),
    ),

    );
  }
}





