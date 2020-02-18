import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class coffeeList extends StatefulWidget {
  @override
  _coffeeListState createState() => _coffeeListState();
}

class _coffeeListState extends State<coffeeList> {
  @override
  Widget build(BuildContext context) {
    final coffee = Provider.of<QuerySnapshot>(context);
    //print(coffee.documents);
    for (var doc in coffee.documents){
      print(doc.data);
    }
    return Container();
  }
}

