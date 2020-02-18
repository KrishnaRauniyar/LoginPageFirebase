import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xFF29D091),
        //_bottomNavIndex causes the navigation items to bear index 0, 1, 2
        //respectively when pressed
        currentIndex: _bottomNavIndex,
        onTap: (int index){
          setState(() {
            _bottomNavIndex = index;
          });
        },
        // at least 2 items must be selected with title can be empty
        items: [
          new BottomNavigationBarItem(
            title: new Text(""),
              icon: new Icon(Icons.message)),
          new BottomNavigationBarItem(
              title: new Text(""),
              icon: new Icon(Icons.home)),
          new BottomNavigationBarItem(
              title: new Text(""),
              icon: new Icon(Icons.call)),
        ],
      ),
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
      ),
      body: MainContent(),

    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ListView ....we will get scrollable screen in Y-axis
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
            child: new Column(
              children: <Widget>[
                //First row for explore
                Row(
                  children: <Widget>[
                    new Text("Explore",style: new TextStyle(fontSize: 30.0,),textAlign: TextAlign.left,),
                  ],
                ),
                //This is a spacing between explore and the row below
                new SizedBox(
                  height: 10.0,
                ),
                //second row for the motor,classified,...
                Row(
                  children: <Widget>[
                    new Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right:5.0),
                          child: new Container(
                            height: 100.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(10.0),
                              color: Color(0xFFFD7384)
                            ),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Icon(Icons.drive_eta, color: Colors.white,),
                                new Text("Motor", style: new TextStyle(color: Colors.white,))
                              ],
                            ),

                      ),
                        )
                    ),
                    new Expanded(
                        child: new Container(
                          height: 100.0,
                          child: new Column(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom:2.5,right:2.5),
                                  child: new Container(
                                    decoration: new BoxDecoration(
                                      color: Color(0xFF2BD093),
                                      borderRadius: new BorderRadius.circular(5.0)
                                    ),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: new Icon(Icons.local_offer,color: Colors.white,),
                                        ),
                                        new Text("Classified",style: new TextStyle(color: Colors.white))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:2.5,right:2.5),
                                  child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Color(0xFFFC7B4D),
                                        borderRadius: new BorderRadius.circular(5.0)
                                    ),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: new Icon(Icons.beenhere,color: Colors.white,),
                                        ),
                                        new Text("Service",style: new TextStyle(color: Colors.white))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),


                        )
                    ),
                    new Expanded(
                        child: new Container(
                          height: 100.0,
                          child: new Column(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left:2.5,bottom:2.5),
                                  child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Color(0xFF53CEDB),
                                        borderRadius: new BorderRadius.circular(5.0)
                                    ),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: new Icon(Icons.account_balance,color: Colors.white,),
                                        ),
                                        new Text("Properties",style: new TextStyle(color: Colors.white))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left:2.5,top:2.5),
                                  child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Color(0xFFF1B069),
                                        borderRadius: new BorderRadius.circular(5.0)
                                    ),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: new Icon(Icons.art_track,color: Colors.white,),
                                        ),
                                        new Text("Jobs",style: new TextStyle(color: Colors.white))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),


                        )
                    ),
                  ],
                ),
                new SizedBox(
                  height: 15.0,
                ),
                //for trending
                new Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text("Popular Trending",style: new TextStyle(fontSize: 18.0),)
                    ),
                    new Expanded(
                        child: new Text("View All",style: new TextStyle(fontSize: 18.0, color: Color(0xFF2BD093)),textAlign: TextAlign.end,)
                    )
                  ],
                ),
                // for photos and words below
                new SizedBox(
                  height: 15.0,
                ),
                //for trending images
                new Row(
                  children: <Widget>[
                    new Expanded(
                        child: Container(
                          height: 140.0,
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                height: 100.0,
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(8.0),
                                    image: new DecorationImage(
                                        image: new NetworkImage("http://www.wallpaperg.com/screenshot/filess/1423686090-screenshot-www.wallpaperg.com.jpg"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                              new Text("Love",style: TextStyle(fontSize: 16.0),),
                            ],

                          )


                    )),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                        child: Container(
                            height: 140.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(8.0),
                                      image: new DecorationImage(
                                          image: new NetworkImage("http://flirtingwiththeglobe.com/wp-content/uploads/2015/11/h1.jpg"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("Destiny",style: TextStyle(fontSize: 16.0),),
                              ],

                            )


                        )),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                        child: Container(
                            height: 140.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(8.0),
                                      image: new DecorationImage(
                                          image: new NetworkImage("http://flirtingwiththeglobe.com/wp-content/uploads/2015/11/h4.jpg"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("The Romance",style: TextStyle(fontSize: 16.0),),
                              ],

                            )


                        )),

                  ],

                ),

                new Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text("Popular Trending",style: new TextStyle(fontSize: 18.0),)
                    ),
                    new Expanded(
                        child: new Text("View All",style: new TextStyle(fontSize: 18.0, color: Color(0xFF2BD093)),textAlign: TextAlign.end,)
                    )
                  ],
                ),
                new SizedBox(
                  height: 15.0,
                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                        child: Container(
                            height: 140.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(8.0),
                                      image: new DecorationImage(
                                          image: new NetworkImage("http://www.wallpaperg.com/screenshot/filess/1423686090-screenshot-www.wallpaperg.com.jpg"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("Love",style: TextStyle(fontSize: 16.0),),
                              ],

                            )


                        )),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                        child: Container(
                            height: 140.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(8.0),
                                      image: new DecorationImage(
                                          image: new NetworkImage("http://flirtingwiththeglobe.com/wp-content/uploads/2015/11/h1.jpg"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("Destiny",style: TextStyle(fontSize: 16.0),),
                              ],

                            )


                        )),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                        child: Container(
                            height: 140.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(8.0),
                                      image: new DecorationImage(
                                          image: new NetworkImage("http://flirtingwiththeglobe.com/wp-content/uploads/2015/11/h4.jpg"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("The Romance",style: TextStyle(fontSize: 16.0),),
                              ],

                            )


                        )),

                  ],

                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text("Popular Trending",style: new TextStyle(fontSize: 18.0),)
                    ),
                    new Expanded(
                        child: new Text("View All",style: new TextStyle(fontSize: 18.0, color: Color(0xFF2BD093)),textAlign: TextAlign.end,)
                    )
                  ],
                ),
                // for photos and words below
                new SizedBox(
                  height: 15.0,
                ),
                //for trending images
                new Row(
                  children: <Widget>[
                    new Expanded(
                        child: Container(
                            height: 140.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(8.0),
                                      image: new DecorationImage(
                                          image: new NetworkImage("http://www.wallpaperg.com/screenshot/filess/1423686090-screenshot-www.wallpaperg.com.jpg"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("Love",style: TextStyle(fontSize: 16.0),),
                              ],

                            )


                        )),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                        child: Container(
                            height: 140.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(8.0),
                                      image: new DecorationImage(
                                          image: new NetworkImage("http://flirtingwiththeglobe.com/wp-content/uploads/2015/11/h1.jpg"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("Destiny",style: TextStyle(fontSize: 16.0),),
                              ],

                            )


                        )),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                        child: Container(
                            height: 140.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(8.0),
                                      image: new DecorationImage(
                                          image: new NetworkImage("http://flirtingwiththeglobe.com/wp-content/uploads/2015/11/h4.jpg"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("The Romance",style: TextStyle(fontSize: 16.0),),
                              ],

                            )


                        )),

                  ],

                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text("Popular Trending",style: new TextStyle(fontSize: 18.0),)
                    ),
                    new Expanded(
                        child: new Text("View All",style: new TextStyle(fontSize: 18.0, color: Color(0xFF2BD093)),textAlign: TextAlign.end,)
                    )
                  ],
                ),
                // for photos and words below
                new SizedBox(
                  height: 15.0,
                ),
                //for trending images
                new Row(
                  children: <Widget>[
                    new Expanded(
                        child: Container(
                            height: 140.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(8.0),
                                      image: new DecorationImage(
                                          image: new NetworkImage("http://www.wallpaperg.com/screenshot/filess/1423686090-screenshot-www.wallpaperg.com.jpg"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("Love",style: TextStyle(fontSize: 16.0),),
                              ],

                            )


                        )),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                        child: Container(
                            height: 140.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(8.0),
                                      image: new DecorationImage(
                                          image: new NetworkImage("http://flirtingwiththeglobe.com/wp-content/uploads/2015/11/h1.jpg"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("Destiny",style: TextStyle(fontSize: 16.0),),
                              ],

                            )


                        )),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                        child: Container(
                            height: 140.0,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(8.0),
                                      image: new DecorationImage(
                                          image: new NetworkImage("http://flirtingwiththeglobe.com/wp-content/uploads/2015/11/h4.jpg"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("The Romance",style: TextStyle(fontSize: 16.0),),
                              ],

                            )


                        )),

                  ],

                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

