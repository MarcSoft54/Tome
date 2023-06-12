import 'package:flutter/material.dart';
import 'package:tome/methode&class/class.dart';

List<ville> Ville = [
  ville("Ouest", "Cameroun"),
  ville("Centre", "Cameroun"),
  ville("Littoral", "Cameroun"),
  ville("Nord", "Cameroun"),
  ville("Extreme-Nord", "Cameroun"),
  ville("Nord-Ouest", "Cameroun"),
  ville("Est", "Cameroun"),
  ville("Sud", "Cameroun"),
  ville("Sud-Est", "Cameroun"),
  ville("Adamaoua", "Cameroun"),

];


Widget drawer(){
  return  ListView.builder(
      itemCount: Ville.length + 1,
      itemBuilder: (content, i){
        ville country = Ville[i];
        if (i == 0){
          return Container(
            child: DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText(country.pays.toUpperCase(), color: Colors.black,),
                    customText("Listes des Regions", color: Colors.red,),
                  ],
                )
            ),
          );
        }else {
          @override
          ville countre = Ville[i-1];
          return ListTile(
            title: customText(countre.nom),
            onTap: (){
              Navigator.pop(content);
            },
          );
        }
        }
      );

}