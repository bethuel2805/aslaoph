import 'package:aslaoph/views/yissipage/view.actu.page.dart';
import 'package:flutter/material.dart';

class ActualityPage extends StatelessWidget {
  const ActualityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text = "Creator est également disponible2. La nouvelle expérience est accessible depuis un mobile en cliquant sur l’icône Bing en bas de l’écran3";
    List image = [
      "https://i.ytimg.com/vi/2RAYPsipxfA/hqdefault.jpg",
      "https://photos.tf1.fr/1200/720/vignette-16-9-les-blagues-de-toto-73adf6-8c1dba-0@1x.jpg",
      "http://www.expedition-invisible.org/wp-content/uploads/2017/02/le_grand_maitre_de_OPH-02.jpg",
      "http://www.expedition-invisible.org/wp-content/uploads/2017/02/le_grand_maitre_de_OPH-03.jpg",
      "http://www.expedition-invisible.org/wp-content/uploads/2017/02/le_grand_maitre_de_OPH-04.jpg",
      "http://www.expedition-invisible.org/wp-content/uploads/2017/02/le_grand_maitre_de_OPH-05.jpg",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Actualités | 884/83"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite))
        ],
      ),
      body: ListView.builder(
        itemCount: image.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ViewActualityPage(image: image[index],title: text,)));
            },
            child: Column(
              children: [
                const SizedBox(height: 10,),
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("${image[index]}"),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("$text",style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold),maxLines: 2,overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Publier le : 1/1/2024 | 15h54",style: TextStyle(fontSize: 17,color: Colors.blueGrey),),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border,color: Colors.red,))
                        ],
                      ),
                      const Divider(),

                    ],
                  ),
                )
              ],
            ),
          );
        },
      )
    );
  }
}
