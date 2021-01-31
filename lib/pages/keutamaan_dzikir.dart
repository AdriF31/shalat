import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shalat/pages/keutamaan_dzikir_detail.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class KeutamaanDzikir extends StatefulWidget {
  @override
  _KeutamaanDzikirState createState() => _KeutamaanDzikirState();
}

class _KeutamaanDzikirState extends State<KeutamaanDzikir> {
  Future getPost() async {
    var firestore = Firestore.instance;

    QuerySnapshot dzikir = await firestore.collection("keutamaan dzikir").getDocuments();

    return dzikir.documents;
  }

  navigateToDetail(DocumentSnapshot post){
    Navigator.push(context, MaterialPageRoute(builder: (context) => KeutamaanDzikirDetail(post: post,)));

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: getPost(),
          builder: (_, snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(
                child: SpinKitFadingCircle(
                  color: Colors.green,
                  duration: Duration(seconds: 2),
                ),
              );
            }
            else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (_, index){
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: GestureDetector(
                      onTap: () => navigateToDetail(snapshot.data[index]),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(88, 149, 84, 1),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ListTile(
                          title: Text(snapshot.data[index].data["title"],
                            style: TextStyle(fontFamily: 'montserrat',fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          }),
    );
  }
}

