import 'package:flutter/material.dart';
import 'package:tome/methode&class/class.dart';

Widget bottomNavigator() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: null,
            icon: customIcon(Icons.home),
          ),
          IconButton(
            onPressed: null,
            icon: customIcon(Icons.favorite,),
          ),
          IconButton(
              onPressed: null,
              icon: customIcon(Icons.language,)),
          IconButton(
              onPressed: null,
              icon: customIcon(Icons.messenger)),
          IconButton(
              onPressed: null,
              icon: customIcon(Icons.person_rounded))
        ],
      ),
    );

}

