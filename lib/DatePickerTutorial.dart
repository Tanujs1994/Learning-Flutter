// ignore_for_file: prefer_const_constructors, unused_local_variable
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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 89, 183, 58)),
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
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Select Date'
          ,style: TextStyle(fontSize: 25),),

          ElevatedButton(onPressed: () async{
            DateTime? datePicked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2021),
              
              lastDate:DateTime(2030));


              if(datePicked!=null){
                print('Date Selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
              }
              
          },
          style:ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
      side: BorderSide(color: const Color.fromARGB(255, 30, 29, 29)),
      
    )
  ),
  backgroundColor:MaterialStateProperty.all(Colors.grey),
  
  ) , child: Text('show',style: TextStyle(color: Colors.white),),
  ),
  ElevatedButton(onPressed:() async{
    var pickedTime = await showTimePicker(
      context:context, 
      initialEntryMode: TimePickerEntryMode.input,
      initialTime:TimeOfDay.now()
      );

     if(pickedTime!=null){
      print('Time Selected:${pickedTime.hour}-${pickedTime.minute}');
     } 

  }, child: Text('Select Time'))
        ],
      ),
    ),
    );
  }
}
