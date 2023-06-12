import 'package:flutter/material.dart';


class maison{
  String type = '';
  double prix = 0 ;
  String quatier = '';
  String ville = '';
  String pays = '';
  String description = '';
  String imageMaison = '';
  maison(this.type, this.prix, this.quatier,this.ville,this.pays,this.description, this.imageMaison);

}


class customText extends Text{
  customText(String data, { color = Colors.white, factor = 1.5, textAlign = TextAlign.center,}):
        super(
          data,
          textScaleFactor: factor,
          textAlign: textAlign,
          style: TextStyle(
            color: color,
          )
      ) ;
}

Padding padding(){
  return Padding(padding: EdgeInsets.all(8));
}


class ville {
  String nom = '';
  String pays = '';
  ville(this.nom, this.pays);
}

class customIcon extends Icon{
  customIcon(IconData icons, {size = 45.0, color = Colors.blueAccent}):
      super(
        icons,
        color: color,
        size: size
      );
}
