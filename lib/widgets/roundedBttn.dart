// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
    final String btnName;
    final Icon? icon;
    final Color bgColor;
    final TextStyle? textStyle;
    final VoidCallback? callBAck;


   RoundedButton({required this.btnName, 
   this.icon, 
   this.bgColor =Colors.blue,
   this.textStyle,
   this.callBAck
   });
    

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      callBAck!();
    },
     child: icon!=null
     ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon!,
        Container(
          width: 11,
        ),
        Text(
           btnName,
           style: textStyle,)
      ],

    )
     : Text(
          btnName,
          style: textStyle,
          ),
      style : ElevatedButton.styleFrom(
       primary: bgColor,
       shadowColor: bgColor,
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(21)
          // topRight:Radius.circular(21),
          // bottomLeft: Radius.circular(21) 
          )
       ) 
      ),
    );
    
  }
  
}