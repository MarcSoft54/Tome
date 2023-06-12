import 'package:flutter/material.dart';
import 'package:tome/methode&class/bottomNav.dart';

import '../methode&class/class.dart';

class detail extends StatefulWidget{
  maison house;

  detail(this.house);
  _detail createState() => _detail();
}

class _detail extends State<detail>{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: customText(' lect'),
      ),
      bottomNavigationBar: bottomNavigator(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customText("Page de lecture", color: Colors.blueAccent,)
          ],
        ),
      ),


    );


  }
}