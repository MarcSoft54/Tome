import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import '../methode&class/class.dart';
import 'discussion.dart';



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
        height: 57,
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
              // mainAxisAlignment:MainAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(top: 10)),
                SizedBox(
                    height: 210,
                    child: Card(
                      child: Image.asset(item!.imageMaison),
                    )
                ),
                const Padding(padding: EdgeInsets.only(top: 25)),
                Container(
                  child: customText(item!.type,factor: 1.4,),
                ),
                SizedBox(
                  height: 90,
                  child: Container(
                    // color: Colors.green,
                    margin: const EdgeInsets.only(left: 8,right: 8, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Icon(Icons.account_circle, size: 40,),
                              customText("Marc william",factor: 1.3,)
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: null,
                          style: const ButtonStyle(
                              elevation: MaterialStatePropertyAll(10),
                              backgroundColor: MaterialStatePropertyAll(Colors.red)
                          ),
                          child: customText("s'abonner"),
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                SizedBox(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        child: customText(item!.description, factor: 1.3,),
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                customText("2 chambres", factor: 1.2,textAlign: TextAlign.right,),
                                customText("1 cuisines", factor: 1.2,textAlign: TextAlign.right),
                                customText("2 douches", factor: 1.2,textAlign: TextAlign.right),
                                customText("1 Salon",factor: 1.2,textAlign: TextAlign.right),
                                customText("1 garages", factor: 1.2,textAlign: TextAlign.right),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 15)),
                          Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      child:Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          customText("situe : ${item!.pays} ",factor: 1.2,),
                                          customText(" ${item!.ville}",factor: 1.2,)
                                        ],
                                      )
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 15)),
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
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
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)
                  ),
                  child: customText("Resever",factor: 3.0),),
                Padding(padding: EdgeInsets.only(bottom: 10))
              ],
            ),
          )
      ),
    );
  }


}
