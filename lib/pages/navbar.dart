import 'package:flutter/material.dart';
import 'package:shalat/pages/home.dart';
import 'package:shalat/pages/jadwal_shalat.dart';
import 'package:shalat/utils/icon_app_icons.dart';


class Navigasi extends StatefulWidget {
  @override
  _NavigasiState createState() => _NavigasiState();
}

class _NavigasiState extends State<Navigasi> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
    JadwalShalat(),
  ];

  Widget currentScreen = HomePage();
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, size: 30,),
              color: currentTab==0? Color.fromRGBO(29, 60, 69, 1) : Colors.white,
              onPressed: () {
                setState(() {
                  currentScreen = HomePage();
                  currentTab = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(IconApp.muslim, size: 30,),
              color: currentTab==1? Color.fromRGBO(29, 60, 69, 0.8) : Colors.white,
              onPressed: () {
                setState(() {
                  currentScreen = JadwalShalat();
                  currentTab = 1;
                });
              },
            ),
          ],
        ),
        color: Color.fromRGBO(78, 148, 156,1),
      ),
    );
  }
}