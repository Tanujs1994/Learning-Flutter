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
        title: Text('Flutter Container'),
      ),
      body: Padding(

        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Column(
                    mainAxisSize: MainAxisSize.min,

            children: [
              Row(
crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(borderRadius: BorderRadius.circular(75),child: Image.asset('assets/images/pic.jpg',height: 150,)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Tanuj Sharma"),
                        Text("Civil Engineer"),
                  Text("23 Years"),
                    ],
                  ),
                

                ],
              ),
              Text("I Like to I Like toI Like toI Like to I Like to I Like toI Like toI Like toI Like to"),
              ElevatedButton(onPressed: (){}, child:Text ('Selected')),
            ],

          ),
        ),
      ),
    );

  }
}
