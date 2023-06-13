import 'dart:ffi';

import 'package:flutter/material.dart';
import '../methode&class/bottomNav.dart';
import '../methode&class/class.dart';
import 'package:tome/methode&class/liste de ville.dart';
import 'package:tome/home&accuil/page de detail.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  List<maison> Maison = [
    maison("villa", 2500, "bonne fontaine", "bafoussam", "Cameroun", "maison a louer avec chambres",'maison/1.jpeg'),
    maison("duplex", 1800, "bonne fontaine", "bafoussam", "Cameroun", "maison a louer avec chambres moderne plus cuisine",'maison/2.jpeg'),
    maison("maison 2 ", 1200, "bonne fontaine", "bafoussam", "Cameroun", "maison a louer avec chambres",'maison/3.jpeg'),
    maison("maison 3", 3500, "bonne fontaine", "bafoussam", "Cameroun", "maison a louer avec chambres",'maison/4.jpeg'),
    maison("maison 4", 650, "bonne fontaine", "bafoussam", "Cameroun", "maison a louer avec chambres",'maison/5.jpeg'),
    maison("maison 5", 1500, "bonne fontaine", "bafoussam", "Cameroun", "maison a louer avec chambres",'maison/5ac5df322f55c5aa689f79a101_mdn-realisation-maison-noyelle-sous-bellone.jpeg'),
    maison("maison 6", 200, "bonne fontaine", "bafoussam", "Cameroun", "maison a louer avec chambres",'maison/construction-maison-information-pratique.jpeg'),
    maison("maison 7", 500, "bonne fontaine", "bafoussam", "Cameroun", "maison a louer avec chambres",'maison/photo-de-maison-2.png'),
  ];
  
  List<caracteristique> Carateristique = [
    caracteristique(2, 0, 2, 5),
    caracteristique(5, 1, 5, 4),
    caracteristique(3, 1, 3, 1),
    caracteristique(5, 1, 1, 1),
    caracteristique(2, 1, 2, 3),
    caracteristique(1, 1, 0, 0),
    caracteristique(2, 1, 1, 0),
    caracteristique(3, 1, 2, 1)
  ];

  @override
  Widget build(BuildContext context) {
    final taille = MediaQuery.of(context).size.width ;
    final Tailletexte = MediaQuery.of(context).size.width / 2.5;
    return Scaffold(
        appBar: AppBar(
         centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: customText("Tome", color: Colors.black,factor: 1.2,),
        ),
        bottomNavigationBar: BottomAppBar(
          child: bottomNavigator(),
        ),
        drawer: Drawer(
          backgroundColor: Colors.blueGrey[100],
          child: drawer(),
        ),
        body: ListView.builder(
            itemCount: Maison.length,
            itemBuilder: (content, i){
              maison home = Maison[i]; // initialisation des maisons
              caracteristique homeCarat = Carateristique[i]; // initialisation des carateristique de la maison
              return InkWell(
                onTap: (){
                  // Navigation sur la page de visualisation
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                    return detail(Maison[i]);
                  }));
                },
                child: Container(
                  child: Card(
                    borderOnForeground: true,
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 250,
                          child:Card(
                            elevation: 20,
                            color: Colors.blue,
                            child: Image.asset(home.imageMaison, fit: BoxFit.fill,),
                          ),
                        ),
                        Container(
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              padding(),
                              customText("Voici une/un ${home.type} Avec :", color: Colors.blue,factor: 1.3,),
                              padding(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  customText("${homeCarat.Chambre} chambres", color: Colors.blue,factor: 1.3,),
                                  customText("${homeCarat.Chambre} cuisines", color: Colors.blue,factor: 1.3,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  customText("${homeCarat.Chambre} Douches", color: Colors.blue,factor: 1.3,),
                                  customText("${homeCarat.Chambre} Salon", color: Colors.blue,factor: 1.3,),
                                ],
                              ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              //   children: [
                              //     customText("${homeCarat.Chambre} chambres", color: Colors.blue,factor: 1.3,),
                              //     customText("${homeCarat.Chambre} chambres", color: Colors.blue,factor: 1.3,),
                              //   ],
                              // ),
                              padding(),
                              Container(
                                height:70,
                                child: customText("Banniere de Promotion Et Annonce", color: Colors.red,),
                              )

                            ],
                          ) ,
                        )

                      ],
                    ),
                  ),
                ),
              );
            })
    );
  }


}