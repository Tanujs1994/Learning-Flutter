// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FlipkartDeliveryWidget extends StatelessWidget {
  const FlipkartDeliveryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12,right: 10),
          child: Icon(
              Icons.local_shipping_outlined,
              color: Color.fromARGB(255, 78, 76, 77),
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
        ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
            
              Text('FREE Delivery ',style: TextStyle (color: Colors.green ,fontWeight: FontWeight.bold ,fontSize: (10))),
              Text(' ₹70',style: TextStyle(decoration: TextDecoration.lineThrough ,color: Colors.grey,fontSize: (10)),),
              Text(' |',style: TextStyle (color: Colors.grey,fontSize: (10)),),
              Text(' Faster delivery by', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: (10)),)
    
    
            ],
          ),
          Row(
            children: [
              Text('11 PM Tommorrow',style: TextStyle (fontWeight: FontWeight.bold,fontSize: (10)),),
            ],
          ),
          Row(
            children: [
              Text('If ordered within',style: TextStyle (color: Colors.grey,fontSize: (8)),),
              Text(" 10m 34s",style: TextStyle (color: Color.fromARGB(255, 231, 9, 83) ,fontWeight: FontWeight.bold,fontSize: (8)),),
            ],
          ),
        ],
      ),
    ),
     Padding(
       padding: const EdgeInsets.only(right: 12),
       child: Icon(
        Icons.keyboard_arrow_right,
        color: Color.fromARGB(255, 78, 76, 77),
        size: 24.0,
        semanticLabel: 'Text to announce in accessibility modes',
         ),
     ),
      ],
    );


   
  }
}