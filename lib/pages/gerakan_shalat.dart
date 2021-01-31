import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GerakanShalat extends StatefulWidget {
  @override
  _GerakanShalatState createState() => _GerakanShalatState();
}

class _GerakanShalatState extends State<GerakanShalat> {
  var _index = 0;
  Widget _builderStep() => Container(
    margin: EdgeInsets.only(top: 10, bottom: 10),
    color: Colors.white,
    child: Stepper(
      steps: [
        Step(
          title: Text("Niat",style: TextStyle(fontFamily: 'montserrat', fontSize: 17),),
          content: Text(
              'Niat yang menjadi syarat sah dan rukun sholat ditetapkan dalam hati pada saat mengucapkan takbir saat takbiratul ikhram',
              style: TextStyle(fontFamily: 'montserrat', fontSize: 17, ),textAlign:TextAlign.justify
          ),
        ),
        Step(
          title: Text("Berdiri Menghadap Kiblat",style: TextStyle(fontFamily: 'montserrat', fontSize: 17),),
          content: Text(
              '“ Shalatlah dalam keadaan berdiri. Jika tidak mampu, kerjakanlah dalam keadaan duduk. Jika tidak mampu lagi, maka kerjakanlah dengan tidur menyamping.”',
              style: TextStyle(fontFamily: 'montserrat', fontSize: 17),textAlign:TextAlign.justify
          ),
        ),
        Step(
          title: Text("Takbiratul Ikhram",style: TextStyle(fontFamily: 'montserrat', fontSize: 17),),
          content: Text(
              '“ Pembuka shalat adalah thoharoh (bersuci). Yang mengharamkan dari hal-hal di luar shalat adalah ucapan takbir. Sedangkan yang menghalalkannya kembali adalah ucapan salam.”',
              style: TextStyle(fontFamily: 'montserrat', fontSize: 17),textAlign:TextAlign.justify
          ),
        ),
        Step(
          title: Text("Membaca Al-Fatihah",style: TextStyle(fontFamily: 'montserrat', fontSize: 17),),
          content: Text(
              '“ Tidak ada shalat (artinya tidak sah) orang yang tidak membaca Al Fatihah"',
              style: TextStyle(fontFamily: 'montserrat', fontSize: 17),textAlign:TextAlign.justify
          ),
        ),
        Step(
          title: Text("Ruku’ dengan tuma’ninah",style: TextStyle(fontFamily: 'montserrat', fontSize: 17),),
          content: Text(
              'Dilakukan setelah berdiri dan disunahkan mengucapkan takbir sambil mengangkat kedua tangan sebelum ruku, lalu memulai ruku dengan posisi membungkukkan badan secara lurus seolah membentuk huruf " L Terbalik" dengan meletakkan telapak tangan memegang persendian lutut',
              style: TextStyle(fontFamily: 'montserrat', fontSize: 17),textAlign:TextAlign.justify
          ),
        ),
        Step(
          title: Text("I’tidal dengan tuma’ninah",style: TextStyle(fontFamily: 'montserrat', fontSize: 17),),
          content: Text(
              'Dilakukan setelah ruku dengan posisi kembali berdiri dengan posisi tangan lurus kebawah, adapula yang melakukan sidekap (agar tangan tidak bergerak-gerak).',
              style: TextStyle(fontFamily: 'montserrat', fontSize: 17),textAlign:TextAlign.justify
          ),
        ),
        Step(
          title: Text("Sujud dengan tuma’ninah",style: TextStyle(fontFamily: 'montserrat', fontSize: 17),),
          content: Text(
              'Dilakukan setelah itidal (untuk sujud pertama) dengan posisi sujud dimana ada 7 bagian anggota badan yang menempel pada alas sholat, yaitu (1) Muka (Dahi dan Hidung), (2,3) Kedua telapak tangan, (4,5) Kedua lutut kaki, (6,7) Kedua Ujung kaki (sekitar jari menempel pada alas sholat dan telapak kaki menghadap kebelakang).',
              style: TextStyle(fontFamily: 'montserrat', fontSize: 17),textAlign:TextAlign.justify
          ),
        ),
        Step(
          title: Text("Duduk diantara dua sujud",style: TextStyle(fontFamily: 'montserrat', fontSize: 17),),
          content: Text(
              'Dilakukan setelah sujud pertama setiap rakaat dengan posisi duduk dimana badan menduduki kedua kaki yang tertekuk kebelakang dan menempel pada alas sholat. Posisi ujung kaki kiri terduduki oleh badan dan posisi ujung kaki kanan masih seperti posisi saat sujud ,dimana bagian sekitar jari kaki kanan menempel pada alas sholat dan telapak kaki kanan menghadap ke belakang. Posisi telapak tangan ada diatas paha.',
              style: TextStyle(fontFamily: 'montserrat', fontSize: 17),textAlign:TextAlign.justify
          ),
        ),
        Step(
          title: Text("Duduk tasyahud (tahiyat)",style: TextStyle(fontFamily: 'montserrat', fontSize: 17),),
          content: Text(
              'Dilakukan setelah sujud terakhir dengan posisi duduk dimana ujung kaki kiri diselipkan dibawah ujung kaki kanan yang masih dalam posisi seperti posisi kaki kanan saat sujud dan " duduk diantara dua sujud".',
              style: TextStyle(fontFamily: 'montserrat', fontSize: 17),textAlign:TextAlign.justify
          ),
        ),
        Step(
          title: Text("Mengucapkan Salam",style: TextStyle(fontFamily: 'montserrat', fontSize: 17),),
          content: Text(
              'Dilakukan saat masih dalam posisi duduk tasyahud akhir setelah membaca shalawat Nabi, wajah menoleh kearah kanan disunahkan untuk mengulangi hal yang sama ke arah sebelah kiri.',
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
        title: Text("ZAKATPEDIA", style: TextStyle(fontFamily: 'montserrat', fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[_builderStep(), SizedBox(height: 800)],
        ),
      ),
    );
  }
}
