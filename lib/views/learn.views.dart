import 'package:aslaoph/views/subpages/question.page.dart';
import 'package:flutter/material.dart';

class LearnViews extends StatefulWidget {
 const LearnViews({Key? key}) : super(key: key);

  @override
  State<LearnViews> createState() => _LearnViewsState();
}

class _LearnViewsState extends State<LearnViews> {

  @override
  Widget build(BuildContext context) {
    final qr = [
      {
        "title": "La mission de Guy Emile Loufoua Cetikouabo",
        "description": "Un body count, signifiant littéralement « décompte du nombre de corps », est un bilan des victimes occasionnées par un événement"
      },
      {
        "title": "La naissance de GELC",
        "description": "Un body count, signifiant littéralement « décompte du nombre de corps », est un bilan des victimes occasionnées par un événement"
      },
      {
        "title": "Le pouvoir de la transformation",
        "description": "Un body count, signifiant littéralement « décompte du nombre de corps », est un bilan des victimes occasionnées par un événement"
      },
      {
        "title": "LA realité de l'asla Oph au monde entier",
        "description": "Un body count, signifiant littéralement « décompte du nombre de corps », est un bilan des victimes occasionnées par un événement"
      }
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text("Cours de la Semaine",style: TextStyle(
                    fontSize: 22,fontWeight: FontWeight.bold
                ),),
                const SizedBox(height: 10,),
                FutureBuilder(
                    future: Future(() => const Text("")),
                    builder: (context,snapshot) {
                      if(snapshot.hasData){
                        if(snapshot.data == null){
                          return const Center(child: Text("Pas de cours pour cette semaine"),);
                        }
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network("https://wp.fr.aleteia.org/wp-content/uploads/sites/6/2022/05/ils-ont-change-le-monde-mame.jpg", fit: BoxFit.cover,),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            const Text("Vembe bethuel Pas de cours pour cette semaine Pas de cours pour cette semaine Pas de cours pour cette semaine Pas de cours pour cette semaine Pas de cours pour cette semaine Pas de cours pour cette semaine",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),maxLines: 3,overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 20,),
                            SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                onPressed: (){},
                                style: ButtonStyle(
                                  backgroundColor: const MaterialStatePropertyAll(Colors.red),
                                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                                ),
                                child: const Text("Acceder au Cours",style: TextStyle(fontSize: 17,color: Colors.white),),
                              ),
                            ),
                          ],
                        );
                      }
                      return const Text("Le premier toto");
                    }
                ),
                const SizedBox(height: 20,),
                const Text("Questions - Réponses",style: TextStyle(
                    fontSize: 25,fontWeight: FontWeight.bold),),
                const SizedBox(height: 20,),
                ExpansionPanelList.radio(
                  children: qr.map((e) => ExpansionPanelRadio(
                    value: e,
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) => ListTile(
                        title: Text("${e["title"]}",style: const TextStyle(fontSize: 18,
                            ),)),
                    body: ListTile(title: Text("${e["description"]}",style: const TextStyle(
                      fontSize: 17,fontWeight: FontWeight.bold
                    ),),),),).toList(),
                ),
                const SizedBox(height: 70,)
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QuestionPage(),));
        },
        backgroundColor: Colors.red,
        icon: const Icon(Icons.message,color: Colors.white,),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        label: const Text("Discussion en message",style: TextStyle(fontSize: 17,color: Colors.white),),
      ),
    );
  }
}

class Item {
  String title;
  String content;

  Item({required this.title,required this.content});
}
