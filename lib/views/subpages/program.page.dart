import 'package:flutter/material.dart';

class ProgramPage extends StatelessWidget{
  const ProgramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Map<String,dynamic>> myData = [
      {
        "section":"Pointe-Noire",
        "programme":[
          {
            "day":"Lundis",
            "info":"Pointe noire Section d'arrondissement de 16h à 18h30 dans les lieux abethuel"
          },{
            "day":"Mardi",
            "info":"Mara Repetition de la chorale au mont Ararate de 16:30 à 18h"
          },{
            "day":"Mercredi",
            "info":"Mercure Sous section de 16h:30 à 18h dans les lieux abethuel"
          },{
            "day":"Jeudi",
            "info":"Jupiter Prière de la paix au Mont Ararate de 15h:30 à 17h, placer sous la direction du frère Ngoulongo Matadie Jean la sucette Membre de l'OPH"
          },{
            "day":"Vendredi",
            "info":"Venus Repetition de la chorale dans les sous sections de 16h à 18h30 dans les lieux abethuel"
          },{
            "day":"Samedi",
            "info":"Saturne Seminaire de formation à comment boire dans la seance en cachètte, par le PABUCOPN/BUCODEC"
          },{
            "day":"Dimanche",
            "info":"Dimanche de pn Séance de louange et de glorification dans les sections d'arrondissement respective de 9h:30 à 17h"
          },
        ]
      },
      {
        "section":"Brazzaville",
        "programme":[
          {
            "day":"Lundis de bz",
            "info":"Section d'arrondissement de 16h à 18h30 dans les lieux abethuel"
          },{
            "day":"Mardioi de bra",
            "info":"Repetition de la chorale au mont Ararate de 16:30 à 18h"
          },{
            "day":"Mercredi de brazz",
            "info":"Sous section de 16h:30 à 18h dans les lieux abethuel"
          },{
            "day":"Jeudi de brazza",
            "info":"Prière de la paix au Mont Ararate de 15h:30 à 17h, placer sous la direction du frère Ngoulongo Matadie Jean la sucette Membre de l'OPH"
          },{
            "day":"Vendredi de bville",
            "info":"Repetition de la chorale dans les sous sections de 16h à 18h30 dans les lieux abethuel"
          },{
            "day":"Samedi de toto ",
            "info":"Seminaire de formation à comment boire dans la seance en cachètte, par le PABUCOPN/BUCODEC"
          },
          {
            "day":"Dimanche de brazzaville",
            "info":"Séance de louange et de glorification dans les sections d'arrondissement respective de 9h:30 à 17h"
          },
        ]
      },
      {
        "section":"Peniel France",
        "programme":[
          {
            "day":"Lundi de fr",
            "info":"Section d'arrondissement de 16h à 18h30 dans les lieux abethuel"
          },{
            "day":"Mardi de fra",
            "info":"Repetition de la chorale au mont Ararate de 16:30 à 18h"
          },{
            "day":"Mercredi de fran",
            "info":"Sous section de 16h:30 à 18h dans les lieux abethuel"
          },{
            "day":"Jeudi de franc",
            "info":"Prière de la paix au Mont Ararate de 15h:30 à 17h, placer sous la direction du frère Ngoulongo Matadie Jean la sucette Membre de l'OPH"
          },{
            "day":"Vendredi de france",
            "info":"Repetition de la chorale dans les sous sections de 16h à 18h30 dans les lieux abethuel"
          },
          {
            "day":"Samedi de gooogo",
            "info":"Seminaire de formation à comment boire dans la seance en cachètte, par le PABUCOPN/BUCODEC"
          },{
            "day":"Dimanche of french",
            "info":"Séance de louange et de glorification dans les sections d'arrondissement respective de 9h:30 à 17h"
          },
        ]
      },
      {
        "section":"Sibity Dubai",
        "programme":[
          {
            "day":"Lundi de sibity",
            "info":"Section d'arrondissement de 16h à 18h30 dans les lieux abethuel"
          },{
            "day":"Mardi de fra",
            "info":"Repetition de la chorale au mont Ararate de 16:30 à 18h"
          },{
            "day":"Mercredi de fran",
            "info":"Sous section de 16h:30 à 18h dans les lieux abethuel"
          },{
            "day":"Jeudi de franc",
            "info":"Prière de la paix au Mont Ararate de 15h:30 à 17h, placer sous la direction du frère Ngoulongo Matadie Jean la sucette Membre de l'OPH"
          },{
            "day":"Vendredi de france",
            "info":"Repetition de la chorale dans les sous sections de 16h à 18h30 dans les lieux abethuel"
          },
          {
            "day":"Samedi de gooogo",
            "info":"Seminaire de formation à comment boire dans la seance en cachètte, par le PABUCOPN/BUCODEC"
          },{
            "day":"Dimanche of french",
            "info":"Séance de louange et de glorification dans les sections d'arrondissement respective de 9h:30 à 17h"
          },
        ]
      }
    ];

    return DefaultTabController(
      length: myData.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Programme semaine | 884/83"),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          bottom: TabBar(
            isScrollable: true,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
              unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal,fontSize: 15),
              tabs: List.generate(myData.length, (index) => Tab(text: myData[index]["section"],)),
          ),
        ),
        body: TabBarView(
          children: List.generate(myData.length, (index0) {
            return ListView.separated(
              itemCount: myData[0]['programme'].length,
              separatorBuilder: (context, index) => const SizedBox(height: 5,),
              itemBuilder: (context, index1) {
                final data = myData[index0]['programme'];
                return SizedBox(
                  height: 250,
                  child: Card(
                    elevation: 8.0,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                width: double.infinity,
                                decoration:  BoxDecoration(
                                    color: Colors.blueGrey.shade300,
                                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),)
                                ),
                                alignment: Alignment.centerLeft,
                                child: Text(data[index1]['day'],style: const TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                              )),
                          Expanded(flex:3,child: SingleChildScrollView(
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(data[index1]['info'],style: const TextStyle(
                                fontSize: 25,fontWeight: FontWeight.w500
                              ),),
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }),
        )
      ),
    );
  }
}
