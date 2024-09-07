import 'package:aslaoph/views/yissipage/view.docs.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DocsViews extends StatelessWidget {
  const DocsViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> imageBooks = [
      {
        "imageLink":"https://www.leslivresblancs.fr/sites/default/files/styles/affiche_livre/public/livre-blanc-l_1065.png",
        "title":"Le Livre de la vie"
      },
      {
        "imageLink":"https://imgv2-1-f.scribdassets.com/img/word_document/671464472/original/432x574/bea2070e64/1703171011?v=1",
        "title":"Ma part de vérité"
      },
      {
        "imageLink":"https://imgv2-2-f.scribdassets.com/img/word_document/359776600/original/432x574/dc7545988e/1698697843?v=1",
        "title":"Noel à l'Asla-OPH"
      },
      {
        "imageLink":"https://e7.pngegg.com/pngimages/689/359/png-clipart-holy-bible-holy-bible.png",
        "title":"La Sainte Bible"
      },
      {
        "imageLink":"https://www.cathobel.be/wp-content/uploads/2021/05/Cover-livre-cardinal-353x500.png",
        "title":"Ma foi me sauve"
      },
      {
        "imageLink":"https://wp.fr.aleteia.org/wp-content/uploads/sites/6/2022/05/ils-ont-change-le-monde-mame.jpg",
        "title":"Leurs Missions"
      },
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text("La documentation de l'ASLA OPH à votre disposition",style: TextStyle(
                fontSize: 25,fontWeight: FontWeight.bold
              ),),
              const SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  print("Un toto de plus");
                },
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    hintText: "Rechecher un document",
                    suffixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Expanded(
                flex: 5,
                child:
                GridView.count(
                  //physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.75,
                  children: List.generate(imageBooks.length, (index) =>  GestureDetector(
                    onTap: (){
                      final data = imageBooks[index];
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewDocsPage(title:data["title"],imageUrl: data["imageLink"], ),));
                    },
                    child: Card(
                      shape:  RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      elevation: 1.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              height: 5,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                                  image: DecorationImage(
                                      image: NetworkImage(imageBooks[index]["imageLink"]),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 3),
                              child: Text(imageBooks[index]['title'],style: const TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 19
                              ),maxLines: 1,overflow: TextOverflow.ellipsis,))
                        ],
                      ),
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        icon: const Icon(CupertinoIcons.book_fill,color: Colors.white,),
        backgroundColor: Colors.red,
        label: const Text("Mes livres",style: TextStyle(color: Colors.white,fontSize: 17),),
        // isExtended: false,
      ),
    );
  }
}
