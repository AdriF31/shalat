import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shalat/pages/jadwal_shalat.dart';
import 'package:shalat/pages/shalatpedia.dart';
import 'package:shalat/pages/splashscreen.dart';
import 'package:shalat/pages/navbar.dart';
import 'package:shalat/pages/gerakan_shalat.dart';
import 'package:shalat/pages/shalat.dart';
import 'package:shalat/pages/dzikir.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'shalat',
      home: SplashScreenPage(),
      routes: <String, WidgetBuilder>{
        "/jadwalshalat" : (BuildContext context) => JadwalShalat(),
        "/navbar" : (BuildContext context) => Navigasi(),
        "/shalatpedia" : (BuildContext context) => Shalatpedia(),
        "/gerakanshalat" : (BuildContext context) => GerakanShalat(),
        "/shalat" : (BuildContext context) => Shalat(),
        "/dzikir" : (BuildContext context) => Dzikir(),
      },
      theme: ThemeData(
        primaryColor: Color.fromRGBO(29, 60, 69, 1),
      ),
    );
  }
}

