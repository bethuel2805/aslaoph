import 'package:flutter/material.dart';

class ViewDocsPage extends StatelessWidget {
  String title;
  String imageUrl;
  ViewDocsPage({Key? key,required this.title,required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high
              )
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10)
            ),
            alignment: Alignment.center,
            child: const Text('Prix : 5500 Fcfa',style: TextStyle(
              fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold
            ),),
          ),
          const SizedBox(height: 10,),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
            child: Text("Baudouin de Guillebon, Mame, avril 2022. Ils étaientIls étaientIls étaientIls étaientIls étaientIls étaientIls étaient peintres, architectes, musiciens, astronomes, médecins, botanistes. Tu en connais certains, d’autres pas. Ils étaient rois ou esclaves, prêtres, religieux ou simples croyants, nés dans des familles très riches ou très pauvres. C’étaient des hommes ou des femmes que presque tout séparait sauf le désir d’aimer Dieu et les autres de tout leur cœur. Ils ont laissé une œuvre éblouissante qui fait que ta vie est plus belle. Découvre ces personnages extraordinaires et tout ce qu’ils ont fait pour toi tout en apprenant plein de choses passionnantes sur l’époque où ils vivaient."
              ,style:  TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
          ),
          const SizedBox(height: 80,)
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){},
          icon: const Icon(Icons.lock_open,color: Colors.white,),
          backgroundColor: Colors.red,
          label: const Text("Debloquer ce livre",style: TextStyle(color: Colors.white,fontSize: 17),)),
    );
  }
}
