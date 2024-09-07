import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
              Container(
                height: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/asla.jpg"),
                fit: BoxFit.fill
              )
            ),
          ),
          const Divider(),
          ListTile(
            onTap: (){},
            title: const Text("Messages du GM OPH",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            leading: const Icon(Icons.mic,size: 25,color: Colors.grey,),
          ),
          ListTile(
            onTap: (){},
            title: const Text("Témoignages",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            leading: const Icon(Icons.scatter_plot_outlined,size: 25,color: Colors.grey,),
          ),
          ListTile(
            onTap: (){},
            title: const Text("Prédications",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            leading: const Icon(Icons.campaign_sharp,size: 25,color: Colors.grey,),
          ),
          ListTile(
            onTap: (){},
            title: const Text("Echos de la joie",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            leading: const Icon(Icons.accessibility_new_outlined,size: 25,color: Colors.grey,),
          ),
          ListTile(
            onTap: (){},
            title: const Text("A propos",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            leading: const Icon(Icons.spa_outlined,size: 25,color: Colors.grey,),
          ),
        ],
      ),
    );
  }
}
