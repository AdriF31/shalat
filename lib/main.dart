import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shalat/pages/jadwal_shalat.dart';
import 'package:shalat/pages/shalatpedia.dart';
import 'package:shalat/pages/splashscreen.dart';
import 'package:shalat/pages/navbar.dart';
import 'package:shalat/pages/gerakan_shalat.dart';
import 'package:shalat/pages/test.dart';

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
      },
      theme: ThemeData(
        primaryColor: Color.fromRGBO(101, 195, 196, 1),
      ),
    );
  }
}

