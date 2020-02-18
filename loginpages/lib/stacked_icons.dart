import 'package:flutter/material.dart';

class StackedIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      alignment: Alignment.center,
      children: <Widget>[
        new Container(
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: Colors.green
          ),
          child: new Icon(Icons.local_offer,color: Colors.white,),
        ),
        new Container(
          margin: new EdgeInsets.only(right: 50.0, top:60.0),
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: Colors.red
          ),
          child: new Icon(Icons.home,color: Colors.white,),
        ),
        new Container(
          margin: new EdgeInsets.only(left: 60.0, top:60.0),
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: Colors.blue
          ),
          child: new Icon(Icons.school,color: Colors.white,),
        ),
        new Container(
          margin: new EdgeInsets.only(left: 10.0, top:125.0),
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: Colors.orange
          ),
          child: new Icon(Icons.place,color: Colors.white,),
        )
      ],
    );
  }
}
