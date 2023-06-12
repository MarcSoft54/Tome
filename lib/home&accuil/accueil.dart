import 'package:flutter/material.dart';
import '../methode&class/bottomNav.dart';
import '../methode&class/class.dart';
import 'package:tome/methode&class/liste de ville.dart';

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


  @override
  void initState(){
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    final taille = MediaQuery.of(context).size.width ;
    final Tailletexte = MediaQuery.of(context).size.width / 2.5;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
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
              maison home = Maison[i];  // initialisation des maisons
              return InkWell(
                onTap: (){
                  // Navigation sur la page de visualisation
                },
                child: Container(
                  height: taille ,
                  padding: EdgeInsets.only(top: 10),
                  child: Card(
                    borderOnForeground: true,
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          elevation: 20,
                          color: Colors.blue,
                          child: Image.asset(home.imageMaison, fit: BoxFit.fill,),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: Tailletexte,
                              child: customText(home.description, color: Colors.blue,factor: 1.3,),
                            ),
                          ],
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