import 'package:aslaoph/views/direct.views.dart';
import 'package:aslaoph/views/docs.views.dart';
import 'package:aslaoph/views/home.views.dart';
import 'package:aslaoph/views/learn.views.dart';
import 'package:flutter/material.dart';

class GlobalApp extends StatefulWidget {
  const GlobalApp({Key? key}) : super(key: key);

  @override
  State<GlobalApp> createState() => _GlobalAppState();
}

class _GlobalAppState extends State<GlobalApp> {
  int i = 0;

  selectIndex(int j){
    setState(() {
      i = j;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          i == 0 ? const Expanded(child: HomeViews()) : Container(),
          i == 1 ? Expanded(child: DirectViews()) : Container(),
          i == 2 ? const Expanded(child: LearnViews()) : Container(),
          i == 3 ? const Expanded(child: DocsViews()) : Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        currentIndex: i,
        onTap: selectIndex,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Accueil"),
          BottomNavigationBarItem(icon: Icon(Icons.live_tv_outlined),label: "Direct TV"),
          BottomNavigationBarItem(icon: Icon(Icons.school_outlined),label: "Cours"),
          BottomNavigationBarItem(icon: Icon(Icons.scatter_plot_outlined),label: "Docs."),
        ],
      ),
    );
  }
}
