// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sort_child_properties_last
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
  State<StatefulWidget> createState() {
   return _MyHomeState();
  }
 

  
}


class _MyHomeState extends  State <MyHomePage> {
var no1controller = TextEditingController();
var no2controller = TextEditingController();

var Result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Basic Calculations')),
        backgroundColor: Colors.blue,

      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              TextField(
                keyboardType: TextInputType.number,
                controller: no1controller,
              ),
              TextField(
                keyboardType: TextInputType.number,
              controller: no2controller,
              ),
            Padding(
              padding: const EdgeInsets.all(21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                   var no1 = int.parse ( no1controller.text);   
                   var no2 = int.parse(no2controller.text);

                   var sum = no1+no2;

                   Result = "The sum of $no1 and $no2 is $sum";
                   setState(() {
                     
                   });

                  }, child: Text('Add'
                  ,style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
              )),
                    
                  ElevatedButton(onPressed: (){
                    var no1 = int.parse(no1controller.text);
                    var no2 = int.parse(no2controller.text);

                    var diff =no1-no2;  
                    
                    Result = "The diffrence between $no1 and $no2 is $diff";
                    
                    setState(() {
                      
                    });


                  }, child: Text('Sub',
                  style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue)),
                    
                  ElevatedButton(onPressed: (){
                    var no1 = int.parse(no1controller.text);
                    var no2 = int.parse(no2controller.text);

                    var result = no1*no2;

                    Result = "The Product of $no1 and $no2 is $result";
                    setState(() {
                      
                    });


                  }, child: Text('Mult',
                  style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue),),
                    
                  ElevatedButton(onPressed: (){
                  var no1 = int.parse(no1controller.text);
                  var no2 = int.parse(no2controller.text);

                  var times = no1/no2;

                  Result = "the $no1 can be divided by $no2 is ${times.toStringAsFixed(2)}";
                  
                  setState(() {
                    
                  });

                  }, child: Text('Div',
                  style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom
                  (backgroundColor: Colors.blue),),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(21),child: Text(Result, style: TextStyle(fontSize: 25,color: Colors.white),),)
        
            ]
          )
        
            
            
          ),
        ),
      ),
    );
 
  }
}
