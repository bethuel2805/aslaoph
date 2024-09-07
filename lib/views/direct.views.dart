import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class DirectViews extends StatefulWidget {
  DirectViews({Key? key}) : super(key: key);

  @override
  State<DirectViews> createState() => _DirectViewsState();
}

class _DirectViewsState extends State<DirectViews> {
  final YoutubePlayerController _youtubePlayerController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=jfKfPfyJRdk")!,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
        hideControls: true,
        isLive: true,
        hideThumbnail: true,
        showLiveFullscreenButton: true,
        controlsVisibleAtStart: true
    )
  );

  @override
  void dispose() {
    _youtubePlayerController.dispose();
    super.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(controller: _youtubePlayerController),
      builder:  (context, player) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("La Télévision de l'Asla Oph",style: TextStyle(
                    fontSize: 25,fontWeight: FontWeight.w500
                ),),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: player,
                ),
                const SizedBox(height: 10,),
                const Text("Retrouvez nous aussi sur",style: TextStyle(
                  fontSize: 22,fontWeight: FontWeight.bold
                ),),
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
                const SizedBox(height: 10,),
                const Text("Découvrez directement",style: TextStyle(
                    fontSize: 22,fontWeight: FontWeight.bold
                ),),
                const SizedBox(height: 10,),
                Expanded(child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) => Card(
                    elevation: 2.0,
                    borderOnForeground: true,
                    color: Colors.blueGrey,
                    child: SizedBox(
                      width: 220,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage("https://randomuser.me/api/portraits/men/$index.jpg"),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                          ),
                          Padding(
                            padding:  const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text("Séance de louange ${index+1}",style: const TextStyle(
                                fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white
                            ),maxLines: 1, overflow: TextOverflow.ellipsis,softWrap: true),
                          )
                        ],
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
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