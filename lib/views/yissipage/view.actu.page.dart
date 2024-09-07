import 'package:flutter/material.dart';

class ViewActualityPage extends StatelessWidget {
  String image;
  String title;
  ViewActualityPage({Key? key,required this.image,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String desc = "Né vers 1942, Guy Emile Loufoua Cétikouabo, se retrouve plongé dans un coma profond de 3 ans et demi, à la suite d’un accident. A son réveil, il déclare avoir reçu sa mission divine et commence à guérir des malades, en utilisant la biéramicine. Après une série de miracles, il reçoit le titre de Grand Maitre de l’OPH, Dieu Créateur de l’Univers. Devant un nombre toujours croissant d’adeptes, il réunit l’argent nécessaire pour acheter aux alentours de Brazzaville la montagne Kari-Kari, où il organise des rituels gigantesques. Parce que son nouveau statut de Sauveur de l’Humanité dérange, il est contraint en 1988 de se retirer de la vie publique. Depuis lors, il se manifeste à ses disciples seulement lorsqu’il le décide. Soit sous la forme d’un enfant ou d’une vieille femme, soit par apparition furtive dans le soleil, invitant télépathiquement ses adeptes à continuer la pratique de l’amour sincère du prochain.";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Le text est ici"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.share))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          ),
          const Padding(
            padding:  EdgeInsets.all(8.0),
            child: Text("Publié le: 1/1/2024 | 15h58",style: TextStyle(fontSize: 18,color: Colors.blueGrey),),
          ),
          Container(
            height: 350,
            width: double.infinity,
            decoration:  BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(desc,style: const TextStyle(fontSize: 20),),
          ),
          const SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: const Text(
              "Retrouvez-nous aussi sur : ",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10,),
          Container(
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        // _launchUrl(
                        //     url: "https://www.facebook.com/rtamedia");
                      },
                      child: SocialNetwork(urlImage: "fb_link.png")),
                  GestureDetector(
                      onTap: () {
                        // _launchUrl(
                        //     url: "https://www.instagram.com/rta_oph");
                      },
                      child: SocialNetwork(urlImage: "insta.jpg")),
                  GestureDetector(
                      onTap: () {
                        // _launchUrl(
                        //     url: "https://www.youtube.com/@RTA-OPHMEDIA");
                      },
                      child: SocialNetwork(urlImage: "youtube_link.png")),
                  GestureDetector(
                      onTap: () {
                        // _launchUrl(url: "https://twitter.com/rta_oph");
                      },
                      child: SocialNetwork(urlImage: "twitter.png")),
                  GestureDetector(
                      onTap: () {
                        // _launchUrl(url: "https://twitter.com/rta_oph");
                      },
                      child: SocialNetwork(urlImage: "tiktok.png")),
                ],
              )),
        ],
      ),
    );
  }
}
Widget SocialNetwork({required String urlImage}) {
  return Container(
    height: 50,
    width: 50,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage("assets/icons/$urlImage"),
        )),
  );
}
