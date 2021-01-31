import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shalatpedia extends StatefulWidget {
  @override
  _ShalatpediaState createState() => _ShalatpediaState();
}

class _ShalatpediaState extends State<Shalatpedia> {
  var _index = 0;
  Widget _builderStep() => Container(
    margin: EdgeInsets.only(top: 10),
    color: Colors.white,
    child: Stepper(
      steps: [
        Step(
          title: Text("Pengertian Shalat",style: TextStyle(fontFamily: 'montserrat', fontSize: 17),),
          content: Text(
              'shalat adalah ibadah kepada Tuhan, berupa perkataan dengan perbuatan yang diawali dengan takbir dan diakhiri dengan salam menurut syarat dan rukun yang telah ditentukan syara”. Juga shalat merupakan penyerahan diri (lahir dan bathin) kepada Allah dalam rangka ibadah dan memohon rido-Nya. Sholat dalam agama islam menempati kedudukan yang tidak dapat ditandingi oleh ibadah manapun juga, ia merupakan tiang agama dimana ia tak dapat tegak kecuali dengan itu.',
              style: TextStyle(fontFamily: 'montserrat', fontSize: 17, ),textAlign:TextAlign.justify
          ),
        ),
        Step(
          title: Text("Kedudukan Shalat",style: TextStyle(fontFamily: 'montserrat', fontSize: 17),),
          content: Text(
              'Shalat merupakan salah satu rukun islam. Keutamaan shalat dapat dilihat dari awal perintah untuk mengerjakannya yaitu diperintahkan langsung kepada Rasulullah Shallallahu ‘alaihi Wasallam tanpa melalui perantara Jibril “alaihis Salaam, di tempat yang tertinggi yang pernah dicapai manusia yaitu langit ketujuh, di malam yang paling utama bagi Nabi Shallallahu ‘alaihi Wasallam yaitu malam Isra’ Mi’raj dan diwajibkan disetiap hari sepanjang hidup seorang muslim.',
              style: TextStyle(fontFamily: 'montserrat', fontSize: 17),textAlign:TextAlign.justify
          ),
        ),
        Step(
          title: Text("Syarat Wajib Shalat",style: TextStyle(fontFamily: 'montserrat', fontSize: 17),),
          content: Text(
              'Shalat diwajibkan bagi semua orang yang seudah memenuhi syarat wajib shakat yaitu : Beragama Islam, Baligh, dan Berakal',
              style: TextStyle(fontFamily: 'montserrat', fontSize: 17),textAlign:TextAlign.justify
          ),
        ),
        Step(
          title: Text("Hukum Meninggalkan Shalat",style: TextStyle(fontFamily: 'montserrat', fontSize: 17),),
          content: Text(
              'Seluruh ummat Islam sepakat bahwa orang yang mengingkari wajibnya shalat, maka dia kafir dan keluar dari Islam. Tetapi mereka berselisih tentang orang yang meninggalkan shalat dengan tetap meyakini kewajiban hukumnya. Sebab perselisihan mereka adalah adanya sejumlah hadits Nabi Shallallahu ‘alaihi wa sallam yang menamakan orang yang meninggalkan shalat sebagai orang kafir, tanpa membedakan antara orang yang mengingkari dan yang bermalas-malasan mengerjakannya.',
              style: TextStyle(fontFamily: 'montserrat', fontSize: 17),textAlign:TextAlign.justify
          ),
        ),
      ],
      currentStep: _index,
      onStepTapped: (index) {
        setState(() {
          _index = index;
        });
      },
      controlsBuilder: (BuildContext context,
          {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
          Container(),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("SHALATPEDIA", style: TextStyle(fontFamily: 'montserrat', fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[_builderStep(), SizedBox(height: 700)],
        ),
      ),
    );
  }
}
