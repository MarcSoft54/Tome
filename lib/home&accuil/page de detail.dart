import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../methode&class/class.dart';
import 'discussion.dart';
import 'accueil.dart';



class detail extends StatelessWidget{

  detail(maison item){
    this.item = item;
  }

  maison? item;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: customText("description", color: Colors.blue[900],factor: 1.2),

      ),
      bottomNavigationBar: NavigationBar(
        height: 47,
        indicatorColor: Colors.blue,
        destinations: [
          IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.home, size: 35,color: Colors.black,)),
          IconButton(
              onPressed: null,
              icon: Icon(Icons.supervisor_account_sharp, size: 35,color: Colors.black)),
          IconButton(
              onPressed: null,
              icon: Icon(Icons.add_circle_outline, size: 35,color: Colors.black)),
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                  return discusion();
                }));
              },
              icon: Icon(Icons.message_outlined, size: 35,color: Colors.black)),
          IconButton(
              onPressed: null,
              icon: Icon(Icons.person_rounded, size: 35,color: Colors.black)),
        ],
        backgroundColor: Colors.blue[200],
      ),
      body: SingleChildScrollView(
          child: Container(
            color: Colors.blue[200],
            child:Column(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 210,
                  child: Card(
                    child: Image.asset(item!.imageMaison),
                  )

                ),
                padding(),
                SizedBox(
                  child: customText(item!.type,),
                ),
                Container(
                  child: customText(item!.description, factor: 1.3,),
                ),
                padding(),
                padding(),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      customText("2 chambres", factor: 1.2,textAlign: TextAlign.start,),
                      customText("1 cuisines", factor: 1.2,),
                      customText("2 douches", factor: 1.2,),
                      customText("1 Salon",factor: 1.2,),
                      customText("1 garages", factor: 1.2,),


                    ],
                  ),
                ),
                padding(),
                padding(),
                SizedBox(
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        customText("situe : ${item!.pays} \t\t\t a",factor: 1.2,),
                        customText(" ${item!.ville}",factor: 1.2,)
                      ],
                    )
                ),
                padding(),
                padding(),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.only(top: 8),
                  height: 60,
                  color: Colors.red,
                  width: double.infinity,
                  child: customText("Price : ${item!.prix} fcfa", factor: 2.0,textAlign: TextAlign.center,),
                ),
                SizedBox(
                  height: 300,
                  child: Card(
                    child: Image.network("https://www.actualitix.com/wp-content/uploads/2017/03/carte-simple-afrique.jpg", fit: BoxFit.cover,),
                  ),
                ),
                padding(),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                      return discusion();
                    }));
                  },
                  child: customText("Resever",factor: 3.0,color: Colors.white,),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)
                  ),)

              ],
            ),
          )
      ),
    );
  }
}
