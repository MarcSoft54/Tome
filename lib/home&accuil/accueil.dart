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

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[200],
        title: customText("Home Page", color: Colors.blue[900],factor: 1.2, textNormal: FontStyle.italic,),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[200],
        // height: 54.2,
        elevation: 25,
        child: bottomNavigator(),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey[100],
        child: drawer(),
      ),
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
                        onPressed: null,
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
                        children: [
                          padding(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    width: 250,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
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
                                            customText("${homeCarat.Chambre} Salons", color: Colors.blue,factor: 1.3,),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                width: 100,
                                height: 100,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.favorite, color: Colors.blue,),
                                    Icon(Icons.share,color: Colors.blue,),
                                    Icon(Icons.messenger,color: Colors.blue,)
                                  ],
                                ),
                              )
                            ],
                          ),
                          padding(),
                          Container(
                            height:70,
                            color: Colors.redAccent,
                            width: double.infinity,
                            child: customText("Special Promo", color: Colors.red[900],factor: 3.0,),
                          )
                        ],
                      ) ,
                    )
                  ],
                ),
              ),
            ),
          );
        }) ;
  }

}