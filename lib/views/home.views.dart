import 'package:aslaoph/views/subpages/actuality.page.dart';
import 'package:aslaoph/views/subpages/information.page.dart';
import 'package:aslaoph/views/subpages/notes.page.dart';
import 'package:aslaoph/views/subpages/program.page.dart';
import 'package:aslaoph/views/yissipage/view.actu.page.dart';
import 'package:aslaoph/widgets/home.widget.dart';
import 'package:flutter/material.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction:1, keepPage: true,initialPage: 0,);

    String text ="Utilisez la fonctionnalité Collection à peindre et changez la couleur de l'ensemble de la collection ou faites pour chaque icône. Télécharger au format Icon ...";

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

    List<Map> list = [
      {
        "title":"Actualité",
        "cover":"assets/icons/actua.png",
      },
      {
        "title":"Programme",
        "cover":"assets/icons/calendar.png",
      },
      {
        "title":"Information",
        "cover":"assets/icons/info.png",
      },
      {
        "title":"Notes Circulaires",
        "cover":"assets/icons/circulaire.png",
      },
      {
        "title":"Prédication",
        "cover":"assets/icons/predication.png",
      },
      {
        "title":"VDH",
        "cover":"assets/icons/time.png",
      },
      {
        "title":"Vue du Monde",
        "cover":"assets/icons/globe.png",
      },
    ];

    final pages = List.generate(imageBooks.length, (index) => GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewActualityPage(
            image: imageBooks[index]['imageLink'], title: imageBooks[index]['title']),));
      },
      child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: SizedBox(
                child: Column(
                  children: [
                    Container(height: 270,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image:  DecorationImage(
                        image: NetworkImage(imageBooks[index]['imageLink']),
                        fit: BoxFit.cover
                      ),
                    ),
                    ),
                    const SizedBox(height: 10,),
                    Text(text,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                    maxLines: 3,overflow: TextOverflow.ellipsis,)
                  ],
                ),
              ),
          ),
    ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("884/83",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 25),),
        centerTitle: true,
        leadingWidth: 70,
        scrolledUnderElevation: 0.0,
        leading: Container(
          padding: const EdgeInsets.symmetric(vertical: 7),
          // color: Colors.red,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
              child: Image.asset("assets/images/asla.jpg")),
            ),
        //
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 380,
                child: PageView.builder(
                  controller: controller,
                  itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              const SizedBox(height: 20,),
              Center(
                child: IndicatorWidgetPage(controller: controller,pageLength: pages.length,)
              ),
              const SizedBox(height: 20,),
              const Text("Rubriques",style: TextStyle(
               fontSize: 24,fontWeight: FontWeight.bold,color: Colors.red
                  ),),
              const SizedBox(height: 10,),
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 10,
                children: List.generate(list.length, (index) =>  GestureDetector(
                  onTap: (){
                    switch(index){
                      case 0: Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ActualityPage(),));
                      break;
                      case 1: Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProgramPage(),));
                      break;
                      case 2: Navigator.of(context).push(MaterialPageRoute(builder: (context) => const InformationPage(),));
                      break;
                      case 3: Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NoteCircularPage(),));
                      break;
                      default:
                        print("l'index est sur : $index");
                    }
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset("${list[index]["cover"]}")
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 3),
                            child: Text("${list[index]["title"]}",style: const TextStyle(
                                fontSize: 18
                            ),maxLines: 1,overflow: TextOverflow.ellipsis,))
                      ],
                    ),
                  ),
                ),
                ),
              ),
              const SizedBox(height: 30,),
              const Text("Entreprises",style: TextStyle(
                  fontSize: 24,fontWeight: FontWeight.bold,color: Colors.red
              ),),
              const SizedBox(height: 30,),
              CardBusiness(
                  title: "Notre Télévision & Radio",
                  imagePath: "https://yt3.googleusercontent.com/OwIPTt7LVLtpjvrmeyzZmaBJ-2C_-tBb3QEfP2eC_FjEFuA_ijXu6VmtUuDqHYz7_yUiV3IjW3k=w1060-fcrop64=1,00005a57ffffa5a8-k-c0xffffffff-no-nd-rj",
                  consultFunction: ()=> print("RTA-OPH"),
              ),
              const SizedBox(height: 20,),
              CardBusiness(
                  title: "Notre Centre de Santé",
                  imagePath: "https://img.freepik.com/photos-gratuite/vue-face-composition-elements-nature-morte-medicale_23-2148854056.jpg",
                  consultFunction: ()=> print("CMS P/N"),
              ),
              const SizedBox(height: 20,),
              CardBusiness(
                  title: "Notre Porcherie",
                  imagePath: "https://img.freepik.com/photos-gratuite/gros-plan-trois-porcs-domestiques_181624-44776.jpg",
                  consultFunction: ()=> print("Porcherie"),
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}