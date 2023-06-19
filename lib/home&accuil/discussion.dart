import 'package:flutter/material.dart';
import 'package:tome/methode&class/class.dart';

class discusion extends StatefulWidget{

  _discussion createState() => _discussion();

}

@override

class _discussion extends State<discusion>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: customText("discussion", color: Colors.blue[900],factor: 1.2),
      ),
      body: SingleChildScrollView(

      ),

    );
  }
}