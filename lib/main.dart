import 'package:flutter/material.dart';
import 'package:untitled/Screen/Fatch_Api_display.dart';

void main(){
  runApp(
   const MaterialApp(
      home: Homapage(),
    )
  );
}
class Homapage extends StatefulWidget {
  const Homapage({Key? key}) : super(key: key);

  @override
  _HomapageState createState() => _HomapageState();
}

class _HomapageState extends State<Homapage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Api Working"),
        centerTitle: true,
      ),
      body: Screen(),
    );
  }
}
