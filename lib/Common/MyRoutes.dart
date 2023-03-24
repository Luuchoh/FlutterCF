
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/Pages/LoginPage.dart';
import 'package:hello_world/Pages/MyHomePage.dart';
import 'package:hello_world/Pages/NowPlayingPage.dart';
import 'package:hello_world/Pages/PlaylistPage.dart';
import 'package:page_transition/page_transition.dart';

const String ROUTE_HOME = '/home';
const String ROUTE_LOGIN = '/login';
const String ROUTE_PLAY_LIST = '/play_list';
const String ROUTE_NOW_PLAYING = '/now_playing';

class MyRoutes {

  static Route<dynamic> generateRoute (RouteSettings settings) {
    switch (settings.name) {
      case '/home' :
        return PageTransition(child: MyHomePage(), type: PageTransitionType.scale, settings: settings, alignment: Alignment.center);
      case '/login' :
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/play_list' :
        return MaterialPageRoute(builder: (_) => PlaylistPage());
      case '/now_playing' :
        return MaterialPageRoute(builder: (_) => NowPlayingPage());
      default :
        return MaterialPageRoute(builder: (_) => LoginPage());
    }
  }

}