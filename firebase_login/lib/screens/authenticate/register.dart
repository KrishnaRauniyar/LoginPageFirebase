import 'package:flutter/material.dart';
import 'package:firebase_login/shared/loading.dart';
import 'package:firebase_login/services/auth.dart';

class Register extends StatefulWidget {
  //property for toggleView
  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  //using a form key to identify the empty field or not
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  //variables that stores the event occurs with email and password field
  String email = " ";
  String password = " ";
  String error = " ";
  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                widget.toggleView();
              },
              icon: Icon(Icons.person),
              label: Text("Sign In")
          )
        ],
        title: Text("Sign Up to Coffee House"),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0)
                    ),

                  ),
                  //check for validation
                  validator: (val) => val.isEmpty ? "Enter an Email": null,
                  onChanged: (val){
                    setState(() {
                      email = val;
                    });

                  },
                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0)
                    ),

                  ),
                  obscureText: true,
                  validator: (val) => val.length < 6 ? "Enter a password 6+ chars long": null,
                  onChanged: (val){
                    setState(() {
                      password = val;
                    });

                  },
                ),
                SizedBox(height: 20.0,),
                RaisedButton(
                  color: Colors.black,
                  child: Text("Register",style: TextStyle(color: Colors.white),),
                  onPressed: () async{
                    if (_formKey.currentState.validate()){
                      setState(() {
                        loading = true;
                      });
                      dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                      if (result == null){
                        setState(() {
                          error = "Please supply a valid email";
                          loading = false;
                        });
                      }
                    }
                  },
                ),
                SizedBox(height: 12.0,),
                Text(
                  error,
                  style: TextStyle(color: Colors.red, fontSize: 14.0)
                )
              ],
            ),
          )
      ),
    );
  }
}
