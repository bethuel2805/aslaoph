import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class NoteCircularPage extends StatefulWidget {
  const NoteCircularPage({Key? key}) : super(key: key);

  @override
  State<NoteCircularPage> createState() => _NoteCircularPageState();
}

class _NoteCircularPageState extends State<NoteCircularPage> {

  bool lasted = false;
  bool recent = true;
  var orderGroup = GroupedListOrder.ASC;

  List<Map<String,String>> notes = [
    {"title":"Un jour au paradise with GOD","team_group_year":"2024"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2024"},
    {"title":"Un jour au paradise with GOD","team_group_year":"1964"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2002"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2024"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2024"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2001"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2024"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2024"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2024"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2024"},
    {"title":"Un jour au paradise with GOD hfdxhgj hkfcd gri i egjfng izf grjng  gije efok bethuel","team_group_year":"2001"},
    {"title":"Un jour au paradise with GOD hfdxhgj toto otot","team_group_year":"2001"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2002"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2024"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2003"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2004"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2024"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2023"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2023"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2023"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2023"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2023"},
    {"title":"Un jour au paradise with GOD","team_group_year":"2023"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.red,
        title: const Text("Notes Circulaires"),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite)),
          IconButton(onPressed: (){
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                title: const Text("Trier par",textAlign: TextAlign.center,),
                alignment: Alignment.center,
                content: SizedBox(
                  height: 110,
                  child: Column(
                    children: [
                      OutlinedButton(
                        onPressed: (){
                          setState(() {
                            orderGroup = GroupedListOrder.DESC;
                          });
                          Navigator.pop(context);
                        },
                        child: const Text("Du plus recent"),
                      ),
                      OutlinedButton(
                        onPressed: (){
                          setState(() {
                            orderGroup = GroupedListOrder.ASC;
                          });
                          Navigator.pop(context);
                        },
                        child: const Text("Du plus anciens"),
                      ),
                    ],
                  ),
                ),
              );
            },);
          }, icon: const Icon(Icons.filter_list_outlined)),
        ],
      ),
      backgroundColor: Colors.blueGrey.shade200,
      body: GroupedListView(
        elements: notes,
        groupBy: (note)=> note["team_group_year"],
        itemComparator: (el1, el2) => el1["title"]!.compareTo(el2["title"]!),
        order: orderGroup,
        // order: GroupedListOrder.DESC,
        useStickyGroupSeparators: true,
        floatingHeader: true,
        groupSeparatorBuilder: (value) => Container(
          padding: const EdgeInsets.all(8),
          child: Text(
            value.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.red),
          ),
        ),
        itemBuilder: (context, element) => Card(
          color: Colors.white,
          elevation: 8.0,
          margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
            leading: Image.asset("assets/icons/circulaire.png"),
            title: Text(element["title"].toString(),maxLines: 3,overflow: TextOverflow.ellipsis,),
            trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline)),
          ),
        ),
      ),
    );
  }
}
