import 'package:flutter/material.dart';
import 'package:flutter_application_5/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigattr example"),
      ),
      body: Column(
         children: [
         ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
         },
          child: Text ('Puch'),
          ),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/second');
          }, 
          child: Text('PuchNamed'),
          ),  
          ElevatedButton(onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => SecondScreen()));
          },
           child: Text('PuchReplacement'),
           ),
          ElevatedButton(onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SecondScreen()), (route) =>false);
          }, 
          child: Text('PuchAndRemoveUntil'),
          ),
          ElevatedButton(onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/second', (route) => false);
            
          }, child: Text ('PuchNamedAndRemoveUntil'),),
          
         ],
      ),
    );
  }
}