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
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 10, 219, 6)),
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
  var emailText = TextEditingController();
  var passwordText = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Container'),
      ),
    body: Center(child: Container(
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            keyboardType: TextInputType.phone,
            controller: emailText,
            // enabled: false,
            decoration: InputDecoration(
              hintText: 'Enter Email here..',
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(
                  color:Colors.deepOrange ,
                  width: 2
                   ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(
                  color:Colors.blueAccent,
                  width: 2 
                  ),
                ),
                disabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color:Colors.black45,width: 2 
                    ),       
                   ),
                // suffixText: "Write your name",
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye,color: Colors.red,),
                  onPressed: (){
                   print('Hello');
                  },
                  
                ),
                prefixIcon: Icon(Icons.phone,color: Colors.red,)

                
              ),
            ),
          
          Container(
            height: 11,
          ),
          TextField(
            controller:passwordText ,
            obscureText: true,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              hintText: 'Enter Password here..',
              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(12),
                borderSide: BorderSide(
                  color:Colors.deepOrange
                   ),
                 )
            ),
          ),
          ElevatedButton(onPressed: (){
            String uEmail = emailText.text.toString();
            String uPassword = passwordText.text;
            print('Email: $uEmail, pass:$uPassword');
            
          }, child: Text('Login'))
        ],
      ))),

    );
  }
}
