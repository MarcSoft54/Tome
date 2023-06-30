

import 'package:flutter/material.dart';
import 'package:tome/home&accuil/discussion.dart';
import 'package:vimeo_video_player/vimeo_video_player.dart';
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
    maison("villa meuble situer non loin du goudron ", 2500, "bonne fontaine", "bafoussam", "Cameroun", "maison a louer avec chambres",'maisonAssest/1.jpg','maisonAssest/v1.mp4'),
    maison("duplex", 1800, "bonne fontaine", "bafoussam", "Cameroun", "maison a louer avec chambres moderne plus cuisine",'maisonAssest/2.jpg','maisonAssest/v2.mp4'),
    maison("maison 2 ", 1200, "bonne fontaine", "bafoussam", "Cameroun", "maison a louer avec chambres",'maisonAssest/3.jpg','maisonAssest/v3.mp4'),
    maison("maison 3", 3500, "bonne fontaine", "bafoussam", "Cameroun", "maison a louer avec chambres",'maisonAssest/4.jpg','maisonAssest/v4.mp4'),
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
          title: customText("Acceuil", color: Colors.black,factor: 1.2),
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

          String _vimeoVideoUrl = "${home.videoPatch}";

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
                      color: Colors.blue[200],
                      child:Card(
                        elevation: 20,
                        // color: Colors.green[900],
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          child: VimeoVideoPlayer(
                            url: _vimeoVideoUrl,
                            autoPlay: false,
                          ),
                        ) , // video de la maison  ************************************
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
                                    width: 110,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.account_circle, size: 34,),
                                        Container(
                                          child: customText("Marc William", factor: 1.1),
                                        )
                                      ],
                                    )
                                ),
                                Expanded(
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          customText((home.type.length > 40)? (home.type.substring(0,72)+"..."):(home.type),factor: 1.1,),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              customText("25k views", factor: 1.1),
                                              customText("22 hours ago", factor: 1.1),
                                            ],
                                          )
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


}