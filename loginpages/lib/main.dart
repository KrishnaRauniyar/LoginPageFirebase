import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desolate Era',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto'
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: Center(
        /*decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/mang-huang-ji-10004.jpg"),
            fit: BoxFit.cover,
          )
        ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Stack(
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
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                  child: new Text("DESOLATE ERA", style: new TextStyle(fontSize: 30.0,color: Colors.black,fontStyle: FontStyle.italic),),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0,top: 10.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFF18D191),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Text("Sign In With Email",style: new TextStyle(fontSize: 20.0,color:Colors.white,)),
                      ),
                    ),
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0,top: 10.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(
                        color: Color(0xFF4364A1),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: new Text("FaceBook",style: new TextStyle(fontSize: 20.0,color:Colors.white,)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 10.0,top: 10.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(
                        color: Color(0xFFDF513B),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: new Text("Google",style: new TextStyle(fontSize: 20.0,color:Colors.white,)),
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}
