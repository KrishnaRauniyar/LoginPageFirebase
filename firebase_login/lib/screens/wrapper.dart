import 'package:firebase_login/models/user.dart';
import 'package:firebase_login/screens/authenticate/authenticate.dart';
import 'package:firebase_login/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    //either return home or authenticate widget
    if (user == null){
      return Authenticate();
    }else{
      return Home();
    }
  }
}
