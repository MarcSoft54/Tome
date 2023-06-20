

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
    maison("villa meuble situer non loin du goudron ", 2500, "bonne fontaine", "bafoussam", "Cameroun", "maison a louer avec chambres",'maison/1.jpeg'),
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
    int _index = 0;
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(Icons.notifications, size: 30,color: Colors.black,)),
            IconButton(
                onPressed: null,
                icon: Icon(Icons.account_circle, size: 30,color: Colors.black,)),

          ],
          backgroundColor: Colors.blue[200],
          title: customText("Acceuil", color: Colors.blue[900],factor: 1.2),
        ),

        bottomNavigationBar: NavigationBar(
          height: 55,
          indicatorColor: Colors.blue,
          destinations: [
            IconButton(
                onPressed: null,
                icon: Icon(Icons.home, size: 34,color: Colors.black,)),
            IconButton(
                onPressed: null,
                icon: Icon(Icons.supervisor_account_sharp,size: 34, color: Colors.black)),
            IconButton(
                onPressed: null,
                icon: Icon(Icons.add_circle_outline,size: 34,color: Colors.black)),
            IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                    return discusion();
                  }));
                },
                icon: Icon(Icons.messenger,color: Colors.black)),
            IconButton(
                onPressed: null,
                icon: Icon(Icons.person_rounded,color: Colors.black)),
          ],
          backgroundColor: Colors.blue[200],
        ),

        body:Container(
          color: Colors.blue[200],
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 8),
                Container(
                  height: 45,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: SearchBar(
                    hintText: "search ... ",
                    shadowColor: MaterialStatePropertyAll(Colors.blue[900]),
                    surfaceTintColor: MaterialStatePropertyAll(Colors.blue[200]),
                    leading: Icon(Icons.search,),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 573,
                  child: list(),

                )
              ],
            ),
          ),
        )



    );

  }


  Widget list() {
    return ListView.builder(
        itemCount: Maison.length,
        itemBuilder: (content, i){
          maison home = Maison[i]; // initialisation des maisons
          caracteristique homeCarat = Carateristique[i]; // initialisation des carateristique de la maison
          return Container(
            color: Colors.blue[200],
            child: Card(
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
                      padding: EdgeInsets.all(20),
                      color: Colors.blue[200],
                      child:Card(
                        elevation: 20,
                        color: Colors.green[900],
                        child: Image.asset(home.imageMaison, fit: BoxFit.fill,repeat: ImageRepeat.repeat,),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    color: Colors.blue[200],
                    child:Column(
                      children: [
                        padding(),
                        InkWell(
                          onTap: (){
                            // Navigation sur la page de visualisation
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                              return detail(Maison[i]);
                            }));
                          },
                          child:Container(
                            margin: EdgeInsets.only(left: 8, right: 8),
                            height:70,
                            // color: Colors.blueAccent,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                    width: 120,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Icon(Icons.account_circle, size: 34,),
                                        customText("Marc William", factor: 1.1),
                                      ],
                                    )
                                ),
                                Expanded(
                                    child: Container(
                                      // color: Colors.red,
                                      child:
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          customText(home.type,factor: 1.1,),
                                          customText("22 hours ago", factor: 1.1)
                                        ],
                                      ),
                                    )),
                              ],
                            ),
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

  Future<void> navigatorByCity() async{
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

  Future<SnackBar> snackbar() async{
    return SnackBar(content: Text("Voici sa "));
  }

}