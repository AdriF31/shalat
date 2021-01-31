import 'package:flutter/material.dart';
import 'package:shalat/pages/dzikir_info.dart';
import 'package:shalat/pages/keutamaan_dzikir.dart';

class Dzikir extends StatefulWidget {
  @override
  _DzikirState createState() => _DzikirState();
}

class _DzikirState extends State<Dzikir> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ZAKAT MAAL", style: TextStyle(fontFamily: 'montserrat', fontWeight: FontWeight.bold),),
        centerTitle: true,
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.info),text: 'Dzikir',),
            Tab(icon: Icon(Icons.menu),text: 'Keutamaan Dzikir',),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          DzikirInfo(),
          KeutamaanDzikir(),
        ],
      ),
    );
  }
}
