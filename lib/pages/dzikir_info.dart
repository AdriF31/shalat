import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DzikirInfo extends StatefulWidget {
  @override
  _DzikirInfoState createState() => _DzikirInfoState();
}

class _DzikirInfoState extends State<DzikirInfo> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Firestore.instance.collection('dzikir').snapshots(),
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: SpinKitFadingCircle(
              color: Colors.green,
              duration: Duration(seconds: 2),
            ),
          );
        }else{
          return ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width,

                      child: Image.network(snapshot.data.documents[0].data["image"], width:MediaQuery.of(context).size.width ,height: MediaQuery.of(context).size.height*0.3,fit: BoxFit.fill,)
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      width: MediaQuery.of(context).size.width,

                      child: Text(snapshot.data.documents[0].data["content"].replaceAll("\\n", "\n"), textAlign: TextAlign.justify,
                        style: TextStyle(fontFamily: 'montserrat',fontSize: 17),))
                ],
              ),
            ],
          );
        }
      },
    );
  }
}
