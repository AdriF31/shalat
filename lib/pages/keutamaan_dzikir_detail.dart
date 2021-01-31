import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class KeutamaanDzikirDetail extends StatefulWidget {
  final DocumentSnapshot post;

  KeutamaanDzikirDetail({this.post});
  @override
  _KeutamaanDzikirDetailState createState() => _KeutamaanDzikirDetailState();
}

class _KeutamaanDzikirDetailState extends State<KeutamaanDzikirDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.post.data["title"],style: TextStyle(fontFamily: 'montserrat',fontWeight: FontWeight.bold),),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width,

                  child: Image.network(widget.post.data["image"], width:MediaQuery.of(context).size.width ,height: MediaQuery.of(context).size.height*0.3,fit: BoxFit.fill,)
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  width: MediaQuery.of(context).size.width,

                  child: Text(widget.post.data["content"].replaceAll("\\n", "\n"), textAlign: TextAlign.justify,
                    style: TextStyle(fontFamily: 'montserrat',fontSize: 17),))
            ],
          ),
        ],
      ),
    );
  }
}