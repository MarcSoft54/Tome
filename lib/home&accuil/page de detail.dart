import 'package:flutter/material.dart';
import '../methode&class/class.dart';

class detail extends StatefulWidget{
  final maison house;

  detail(this.house);
  _detail createState() => _detail();
}

class _detail extends State<detail>{


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: customText("description", color: Colors.blue[900],factor: 1.2),

      ),
      body: Center(),


    );


  }
}