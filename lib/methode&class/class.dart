import 'package:flutter/material.dart';


class maison{
  String type ;
  double prix ;
  String quatier;
  String ville;
  String pays;
  String description;
  String imageMaison;
  String videoPatch;
  maison(this.type, this.prix, this.quatier,this.ville,this.pays,this.description, this.imageMaison, this.videoPatch);

}

class caracteristique{
  int Chambre;
  int Cuisine;
  int douche;
  int salon;
  caracteristique(this.Chambre, this.Cuisine, this.douche, this.salon);
}

class customText extends Text{
  customText(String data, { color = Colors.black, factor = 1.5, textAlign = TextAlign.center,textNormal = FontStyle.normal}):
        super(
          data,
          textScaleFactor: factor,
          textAlign: textAlign,
          style: TextStyle(
            fontStyle: textNormal,
            color: color,
          )
      ) ;
}

Padding padding(){
  return Padding(padding: EdgeInsets.all(3));
}


class ville {
  String nom = '';
  String pays = '';
  ville(this.nom, this.pays);
}

class customIcon extends Icon{
  customIcon(IconData icons, {size = 35.0, color = Colors.blue}):
      super(
        icons,
        color: color[900],
        size: size
      );
}

