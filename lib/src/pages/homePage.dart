import 'package:flutter_web/material.dart';
import '../utils/responsiveWidget.dart';
import './signinPage.dart';
import './signupPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget bigScreen() {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 7.5, left: 41.25),
                child: Text(
                  "Abu El-3rif ",
                  style: TextStyle(
                    fontSize: 55.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7.5, left: 825.0),
                child: RaisedButton(
                  color: Colors.blueAccent,
                  child: Text("Log In"),
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7.5, left: 22.5),
                child: RaisedButton(
                  child: Text("Get Started"),
                  color: Colors.blue,
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => GetStartedPage(),
                        ),
                      ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 67.5, left: 78.75),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Manage \nYour Rents \nEasily.",
                      style: TextStyle(
                        fontSize: 82.5,
                      ),
                    ),
                    RaisedButton(
                      onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => GetStartedPage(),
                            ),
                          ),
                      child: Text("Get Started"),
                      color: Colors.blue,
                    )
                  ],
                ),
                Container(
                  child: Image.network("https://via.placeholder.com/450"),
                  margin: EdgeInsets.only(top: 0.1, left: 303.75),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 67.5,
              bottom: 40.0,
            ),
            child: Text(
              "What We do Best?",
              style: TextStyle(fontSize: 60.0),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20.5,
              bottom: 40.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  margin: EdgeInsets.only(bottom: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(Icons.supervisor_account),
                      ),
                      Text(
                        "Easier Managing ",
                        style: TextStyle(fontSize: 29.0),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 8,
                        child: Text(
                          "AbuEl3rif Makes Managing your tenants Easier",
                          style: TextStyle(fontSize: 22.0),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  margin: EdgeInsets.only(bottom: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(Icons.contacts),
                      ),
                      Text(
                        "Easier Comminucation",
                        style: TextStyle(fontSize: 29.0),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 8,
                        child: Text(
                          "AbuEl3rif Makes Managing your tenants Easier",
                          style: TextStyle(fontSize: 22.0),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  margin: EdgeInsets.only(bottom: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(Icons.attach_money),
                      ),
                      Text(
                        "Easier Collecting ",
                        style: TextStyle(fontSize: 29.0),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 8,
                        child: Text(
                          "AbuEl3rif Makes Managing your tenants Easier",
                          style: TextStyle(fontSize: 22.0),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    "Why Choose Us?",
                    style: TextStyle(fontSize: 60.0),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 80.0),
                      child: Image.network(
                          "https://ahmedmgh67.github.io/StackNet-Website/images/images.png"),
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(20.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.ac_unit,
                                    size: 55.0,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        "Big Text",
                                        style: TextStyle(fontSize: 30.0),
                                      ),
                                      Text(
                                        "Details k s cdkzdkvzck vkxk",
                                        style: TextStyle(fontSize: 20.0),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(20.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.ac_unit,
                                    size: 55.0,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        "Big Text",
                                        style: TextStyle(fontSize: 30.0),
                                      ),
                                      Text(
                                        "Details k s cdkzdkvzck vkxk",
                                        style: TextStyle(fontSize: 20.0),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(20.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.ac_unit,
                                    size: 55.0,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        "Big Text",
                                        style: TextStyle(fontSize: 30.0),
                                      ),
                                      Text(
                                        "Details k s cdkzdkvzck vkxk",
                                        style: TextStyle(fontSize: 20.0),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(20.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.ac_unit,
                                    size: 55.0,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        "Big Text",
                                        style: TextStyle(fontSize: 30.0),
                                      ),
                                      Text(
                                        "Details k s cdkzdkvzck vkxk",
                                        style: TextStyle(fontSize: 20.0),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Container(
          //   color: Colors.blue,
          //   padding: EdgeInsets.only(top: 25, bottom: 10, left: 20.0),
          //   child: Row(
          //     children: <Widget>[
          //       Column(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         children: <Widget>[
          //           Container(
          //             child: Text("All CopyRights Reserves 2019"),
          //           ),
          //           Container(
          //             child: Text("Develped By Ahmed Gamal for AbuEl3rif"),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget smallScreen() {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              FlutterLogo(
                size: 40.0,
              )
            ],
          ),
          Divider(),
          Image.network("https://via.placeholder.com/400x300"),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 10),
            child: Text(
              "Abu El-3rif",
              style: TextStyle(
                fontSize: 52.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 6,
                vertical: 5.0),
            child: Text(
              "Manage Your Rents Easily.",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 3,
                vertical: 5.0),
            child: RaisedButton(
              child: Text("Get Started"),
              color: Colors.blue,
              onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => GetStartedPage(),
                    ),
                  ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 3),
            child: RaisedButton(
              child: Text("Log In"),
              color: Colors.blueAccent,
              onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: bigScreen(),
      smallScreen: smallScreen(),
    );
  }
}

