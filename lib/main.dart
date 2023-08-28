// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_basics/FlipkartBankoffer.dart';
import 'package:flutter_basics/FlipkartDelivery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //debugPaintSizeEnabled=true;
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
        title: Text('Flipkart App'),
      ),
    body: Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Text(style: TextStyle(color:const Color.fromARGB(255, 4, 90, 7)),'11% off',),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),"3,34,990"),
            ),
            Text("₹2,96,990",style: TextStyle (color: Colors.black),)
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Text("Or Pay 296,661 +💰329",style: TextStyle(color: Colors.black,fontSize: (12))),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 12),
        child: Row(
          children: [
            Text("1Cr+ users Buy Now Pay Later",style: TextStyle(color: Colors.black,fontSize: 12),),
            Text(' Activate Now',style: TextStyle(color: Colors.blue,fontSize: 12),)
          ],
        ),
      ),
      
      Padding(
        padding: const EdgeInsets.only(bottom: 8),

        child: Divider(thickness:2,color: Color.fromARGB(255, 188, 184, 184),),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Deliver to:',style: TextStyle (fontSize: 07) ),
                    Text(" Nikhil Dalakoti, 122001",style: TextStyle (fontWeight: FontWeight.bold,fontSize: 10),),
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Container(
                        color: Color.fromARGB(255, 244, 241, 241),
                        
                    
                        
                      child: Text("HOME",style: TextStyle(fontSize: 12,),)),
                    ),
                    
                  ],
                ),
                Row(
                  children: [
                    Text('H.No.-964/22,Gandhi Nagar,Gurugram',style: TextStyle(fontSize: 9),),
                   
                  ],
                )
              ],
            ),
             OutlinedButton(style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 22,vertical: 1)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: BorderSide(color: Color.fromARGB(255, 11, 82, 234)))
                      )
                    ),onPressed: (){}, child: Text("Change",style: TextStyle(fontSize: 10,color: Color.fromARGB(255, 62, 10, 249)),)
                    ),
                   
          ],
        ),
      ),
       Divider(thickness: 2 ,color: Color.fromARGB(255, 188, 184, 184,)),
       FlipkartDeliveryWidget(),
        Divider(thickness:2,color: Color.fromARGB(255, 188, 184, 184),),
        FlipkartBankofferWidget()

    ],)
    );
  }
}
