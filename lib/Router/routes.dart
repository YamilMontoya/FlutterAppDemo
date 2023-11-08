
//for know where de user is before nav to other routes
//we can do getters for validate de path of the call
//print(GoRouter.of(context).routeInformationProvider.value.uri);
// SIN IMPLEMENTAR


import 'package:flutter/material.dart';

class Rout {
  final String name;
  final String path;
  final Widget screen;
  //final GlobalKey<NavigatorState> NavigatorKey;
  Rout(this.name, this.path,this.screen);
}

class Routes {
  /*static String _homePage = "/a";
  static String _profilePage = "/b";
  static String _settingsPage = "/c";
  static String _detailsPage = "/details";*/
  static List<Rout> list = [];
  static Add(Rout){
    list.add(Rout);
  }
  static List<Rout> getList(){
    return list;
  }
}



