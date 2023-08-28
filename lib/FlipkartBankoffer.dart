// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FlipkartBankofferWidget extends StatelessWidget {
  const FlipkartBankofferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height:20,width:40,child: Image.asset('assets/images/download.jpeg',)),
            ),
           Icon(
            Icons.expand_more,
            color: Color.fromARGB(255, 78, 76, 77),
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
             ),
          ],
          
        ),
      ],
    );
    
  }
}