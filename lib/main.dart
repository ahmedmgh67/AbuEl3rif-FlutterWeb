import 'package:FlutterWeb/responsiveWidget.dart';
import 'package:flutter_web/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abu El-3rif',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "GoogleSansRegular",
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<Map> apartments = [
    {
      'id': 0,
      "tenant": "Ahmed Gamal",
      "address": "28 Nile St.",
      "date": "25",
      "rent": "5000"
    },
    {
      'id': 1,
      "tenant": "Mohamed Mamdouh",
      "address": "20 Helaly St.",
      "date": "16",
      "rent": "5000"
    },
    {
      'id': 2,
      "tenant": "Mahmoud Ahmed",
      "address": "7 Nemis St.",
      "date": "19",
      "rent": "5000"
    },
    {
      'id': 3,
      "tenant": "Hazem Alaa",
      "address": "2 Nasr St.",
      "date": "29",
      "rent": "5000"
    },
    {
      'id': 4,
      "tenant": "Mostafa Hamdy",
      "address": "13 Azhar St.",
      "date": "20",
      "rent": "5000"
    },
  ];

  Widget bigScreen() {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 7.5, left: 41.25, right: 720.0),
                child: Text(
                  "Abu El-3rif ",
                  style: TextStyle(
                    fontSize: 60.0,
                  ),
                ),
              ),
              Container(
                  child: CircleAvatar(
                child: FlutterLogo(),
              )),
              Container(
                child: Text("Ahmed Gamal"),
              ),
              Container(
                margin: EdgeInsets.only(top: 3.75, left: 55.0),
                child: RaisedButton(
                  child: Text("Log Out"),
                  color: Colors.blue,
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 15.0, right: 41.25),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Card(
                    margin: EdgeInsets.only(top: 15.0, left: 41.25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text("Balance"),
                          margin: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 41.25),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 41.25),
                          child: Text(
                            "80000 EGP",
                            style: TextStyle(
                              fontSize: 55.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    margin: EdgeInsets.only(top: 15.0, left: 41.25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text("Apartments No."),
                          margin: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 41.25),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 41.25),
                          child: Text(
                            "4",
                            style: TextStyle(
                              fontSize: 55.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    margin: EdgeInsets.only(top: 15.0, left: 41.25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text("Next Month Charge"),
                          margin: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 41.25),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 41.25),
                          child: Text(
                            "20000 EGP",
                            style: TextStyle(
                              fontSize: 55.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40.0, top: 20.0),
            child: Row(
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  child: Text("Add Apartment"),
                  onPressed: () {},
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: RaisedButton(
                    color: Colors.blue,
                    child: Text("Add/Relese Tenant"),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(22.0),
            child: DataTable(
                columns: [
                  DataColumn(label: Text("Address")),
                  DataColumn(label: Text("Tenant")),
                  DataColumn(label: Text("Rate")),
                  DataColumn(label: Text("Charge Date")),
                ],
                rows: []..addAll(apartments.map((f) => DataRow(cells: [
                      DataCell(Text(f["address"])),
                      DataCell(Text(f["tenant"])),
                      DataCell(Text(f["rent"])),
                      DataCell(Text(f["date"])),
                    ])))),
          ),
        ],
      ),
    );
  }

  Widget smallScreen() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              //child: Container,
              currentAccountPicture: FlutterLogo(),
              accountEmail: Text("ahmedmgh67@gmail.com"),
              accountName: Text("Ahmed M. Gamal"),
            ),
            ListTile(
              title: Text("Release / Add Tenant"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Add Apartment"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blue),
            padding: EdgeInsets.only(right: 5.0, left: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 5.0, top: 5.0), // left: 5.0),
                  child: Text("Balance"),
                ),
                Container(
                  margin: EdgeInsets.only(right: 5.0, top: 1.0), // left: 5.0),
                  child: Text("80000 EGP", style: TextStyle(fontSize: 40.0)),
                ),
                Container(
                  margin: EdgeInsets.only(right: 5.0, top: 5.0), // left: 5.0),
                  child: Text("Next Month Charge"),
                ),
                Container(
                  margin: EdgeInsets.only(right: 5.0, top: 1.0), // left: 5.0),
                  child: Text("20000 EGP", style: TextStyle(fontSize: 40.0)),
                ),
              ],
            ),
          ),
        ]..addAll(
            apartments.map(
              (i) => ListTile(
                    isThreeLine: true,
                    title: Text(i["address"]),
                    trailing: Text("${i["date"]}"),
                    subtitle: Text(i["tenant"] + "\n" + i["rent"]),
                  ),
            ),
          ),
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
