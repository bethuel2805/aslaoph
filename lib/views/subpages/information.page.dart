import 'package:aslaoph/views/yissipage/view.actu.page.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text = "Né vers 1942, Guy Emile Loufoua Cétikouabo, se retrouve plongé dans un coma profond de 3 ans et demi, à la suite d’un accident. A son réveil, il déclare avoir reçu sa mission divine et commence à guérir des malades";
    List image = [
      "http://www.expedition-invisible.org/wp-content/uploads/2017/02/le_grand_maitre_de_OPH-05.jpg",
      "https://i.ytimg.com/vi/2RAYPsipxfA/hqdefault.jpg",
      "http://www.expedition-invisible.org/wp-content/uploads/2017/02/le_grand_maitre_de_OPH-04.jpg",
      "https://photos.tf1.fr/1200/720/vignette-16-9-les-blagues-de-toto-73adf6-8c1dba-0@1x.jpg",
      "http://www.expedition-invisible.org/wp-content/uploads/2017/02/le_grand_maitre_de_OPH-02.jpg",
      "http://www.expedition-invisible.org/wp-content/uploads/2017/02/le_grand_maitre_de_OPH-03.jpg",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Informations | 884/83"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: ListView.separated(
        itemCount: image.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewActualityPage(image: image[index], title: text),));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 2),
              padding: const EdgeInsets.only(top: 8),
              height: 130,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex:2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Text("$text",
                          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          maxLines: 3,overflow: TextOverflow.ellipsis,),
                        const Text("Publier le : 1/1/2024 | 15h54",style: TextStyle(fontSize: 17,color: Colors.blueGrey),),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Expanded(
                    child: Card(
                      elevation: 15.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage("${image[index]}"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}