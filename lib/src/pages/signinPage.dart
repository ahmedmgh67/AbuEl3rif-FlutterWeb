import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import '../utils/responsiveWidget.dart';
import './dashboardPage.dart';
import './signupPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../utils/success_error_overlay.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool isCorrect;
  bool showed= false;
  Widget bigScreen() {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ListView(
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
                  margin:
                      EdgeInsets.only(left: 450.0, right: 450.0, top: 150.0),
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
                  child: Text("Log In"),
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
        ],
      ),
    );
  }

  Widget smallScreen() {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ListView(
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
                margin: EdgeInsets.symmetric(horizontal: 110.0, vertical: 22.5),
                child: RaisedButton(
                  child: Text("Log In"),
                  color: Colors.blue,
                  onPressed: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => DashboardPage(),
                        ),
                      ),
                ),
              ),
            ],
          ),
          !showed?Container():SuccessErrorOverlay(
            isCorrect: isCorrect,
            onTap: () => setState(() => showed= false),
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

  void login() async {
    var req = await http.post("url", body: {"email": "", "password": "",},);
    try {
      var decoded = jsonDecode(req.body);
    } catch (err) {
      isCorrect = false;
      setState(() {
        showed =true; 
        return;
      });
    }
    isCorrect = true;
    setState(() {
      showed = true;
    });
    await Navigator.of(context).push(MaterialPageRoute(builder: (_) => DashboardPage()));
  }
}
