import 'package:aslaoph/global_app.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState()  {
    Future.delayed(Duration(seconds: 4),)
        .then((value) => Navigator.of(context)
        .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => GlobalApp(),),
            (route) => false));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.all(15),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                    child: Container(
                      width: 150,
                      height: 150,
                      margin: const EdgeInsets.all(20.0),
                      child: ClipRRect(child: Image.asset("assets/images/asla.jpg"),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    )
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: GestureDetector(
                      onTap: (){
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          elevation: 0.5,
                          duration: Duration(seconds: 2),
                          content:Text("Created by ALTAÏR VBA",style: TextStyle(fontSize: 17,
                              fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.center,),
                          backgroundColor: Colors.transparent, ));
                      },
                      child: Center(
                        child: Text("884/83",style: TextStyle(fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      ),
                    ),
                  )
              ),
            ],
          )
      ),
    );
  }
}
