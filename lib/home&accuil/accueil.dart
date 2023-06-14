import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tome/home&accuil/discussion.dart';
import '../methode&class/class.dart';
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

  String motEntre = ' ';
  bool coleur = false;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: customText("Acceuil", color: Colors.blue[900],factor: 1.2),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[200],
        // height: 54.2,
        elevation: 25,
        child: bottomNavigator(),
      ),
      // drawer: Drawer(
      //   backgroundColor: Colors.blue[300],
      //   child: drawer(),
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Container(
              height: 45,
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: 20,
                    ),
                    Expanded(child: Container(
                      padding: EdgeInsets.only(bottom: 3),
                      child: TextField(
                        onChanged: (String str){
                          motEntre = str;
                        },
                        decoration: InputDecoration(
                            labelText: "Search ...",
                            labelStyle: TextStyle(
                              color: Colors.blue[700],
                            )
                        ),
                      ),
                    )),
                    Container(
                      width: 135,
                      padding: EdgeInsets.all(2),
                      margin: EdgeInsets.only(top: 8, right: 6),
                      child: ElevatedButton(
                        onPressed: (){
                          log(motEntre);
                        },
                        child: customText("Rechercher", factor: 1.1,),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.blue),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 565,
              child: list(),
            )
          ],
        ),
      ),
    );

  }


  Widget list() {
    return ListView.builder(
        itemCount: Maison.length,
        itemBuilder: (content, i){
          maison home = Maison[i]; // initialisation des maisons
          caracteristique homeCarat = Carateristique[i]; // initialisation des carateristique de la maison
          return Container(
            child: Card(
              borderOnForeground: true,
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      // Navigation sur la page de visualisation
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                        return detail(Maison[i]);
                      }));
                    },
                    child:  Container(
                      height: 250,
                      child:Card(
                        elevation: 20,
                        color: Colors.blue,
                        child: Image.asset(home.imageMaison, fit: BoxFit.fill,),
                      ),
                    ),
                  ),
                  Container(
                    child:Column(
                      children: [
                        padding(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: (){
                                    // Navigation sur la page de visualisation
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                                      return detail(Maison[i]);
                                    }));
                                  },
                                  child:Container(
                                    margin: EdgeInsets.only(left: 5),
                                    width: 250,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        customText("Name of the house will be here ..", color: Colors.blue,factor: 1.8,),
                                        padding(),
                                        customText("Cliquez pour avoir plus de detail Description", color: Colors.blueAccent,),
                                      ],
                                    ),
                                  ) ,
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 25),
                              height: 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    icon : Icon(Icons.favorite, size: 35,), color: (coleur)? Colors.red : Colors.blue,
                                    onPressed: (){
                                      setState(() {
                                        coleur = !coleur;
                                      });
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.share,color: Colors.blue,),
                                    onPressed: alertShare,
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.messenger,color: Colors.blue,),
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                                        return discusion();
                                      }));
                                    },
                                  )],
                              ),
                            )
                          ],
                        ),
                        padding(),
                        InkWell(
                          onTap: (){
                            // Navigation sur la page de visualisation
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                              return detail(Maison[i]);
                            }));
                          },
                          child:Container(
                            height:70,
                            color: Colors.blueAccent,
                            width: double.infinity,
                            child: customText("Prix : ${home.prix} cfa", color: Colors.blue[900],factor: 3.0,),
                          ),
                        ),
                      ],
                    ) ,
                  ),
                ],
              ),
            ),
          );
        }) ;
  }
  void couleur(){
    coleur = !coleur;
  }

  Future<void> alertShare() async{
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return SimpleDialog(
            backgroundColor: Colors.blue[200],
            title: customText("Partager vers ...",factor: 1.2,),
            contentPadding: EdgeInsets.all(20),
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.facebook, color: Colors.blueAccent[200],size: 45,),
                        onPressed: null,
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.telegram, color: Colors.blueAccent[200],size: 45,),
                        onPressed: null,
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.offline_bolt_outlined, color: Colors.red[400],size: 45,),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        }
    );
  }

  Widget bottomNavigator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        IconButton(
          onPressed: null,
          icon: customIcon(Icons.favorite,),
        ),

        IconButton(
            onPressed: (){
              drawer();
            },
            icon: customIcon(Icons.language,)),

        IconButton(
          onPressed: null,
          icon: customIcon(Icons.upload),
        ),

        IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                return discusion();
              }));
            },
            icon: customIcon(Icons.messenger)),
        IconButton(
            onPressed: null,
            icon: customIcon(Icons.person_rounded))
      ],
    );

  }

  Future<void> drawer() async{
    return showDialog(
        context: context,
        builder: (BuildContext){
          return SimpleDialog(
            backgroundColor: Colors.blue[200],
            title: customText(Ville[0].pays),
            children: [
              SizedBox(
                height: 500,
                child: ListView.builder(
                    itemCount: Ville.length,
                    itemBuilder: (content, i){
                      ville country = Ville[i];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ListTile(
                            title: customText(country.nom),
                            onTap: (){
                              Navigator.pop(context);
                            },
                          )
                        ],
                      );
                    }
                ),
              )

            ],
          );
        });

  }

}