import 'package:flutter_web/material.dart';
import '../utils/responsiveWidget.dart';
import './dashboardPage.dart';
import './signinPage.dart';

class GetStartedPage extends StatefulWidget {
  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
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
                    fontSize: 60.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7.5, left: 700.0),
                child: RaisedButton(
                  child: Text("Home"),
                  color: Colors.blue,
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7.25, left: 22.5),
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
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 450.0, right: 450.0, top: 150.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "E-Mail",
                    style: TextStyle(
                      fontSize: 22.5,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      hintText: "E-Mail",
                    ),
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 22.5,
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      hintText: "Password",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 637.5, vertical: 22.5),
            child: RaisedButton(
              child: Text("Submit"),
              color: Colors.blue,
              onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DashboardPage(),
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }

  Widget smallScreen() {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Abu El-3rif",
              style: TextStyle(
                fontSize: 60.0,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 22.5,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      hintText: "Name",
                    ),
                  ),
                  Text(
                    "E-Mail",
                    style: TextStyle(
                      fontSize: 22.5,
                    ),
                  ),
                  TextField(
                    //obscureText: true,
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      hintText: "E-Mail",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 110.0, vertical: 22.5),
            child: RaisedButton(
              child: Text("Submit"),
              color: Colors.blue,
              onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DashboardPage(),
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

