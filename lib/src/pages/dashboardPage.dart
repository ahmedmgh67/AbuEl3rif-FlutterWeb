import 'package:flutter_web/material.dart';
import '../utils/responsiveWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/apartment.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  // List<Map> apartments = [
  //   {
  //     'id': 0,
  //     "tenant": "Ahmed Gamal",
  //     "address": "28 Nile St.",
  //     "date": "25",
  //     "rent": "5000"
  //   },
  //   {
  //     'id': 1,
  //     "tenant": "Mohamed Mamdouh",
  //     "address": "20 Helaly St.",
  //     "date": "16",
  //     "rent": "5000"
  //   },
  //   {
  //     'id': 2,
  //     "tenant": "Mahmoud Ahmed",
  //     "address": "7 Nemis St.",
  //     "date": "19",
  //     "rent": "5000"
  //   },
  //   {
  //     'id': 3,
  //     "tenant": "Hazem Alaa",
  //     "address": "2 Nasr St.",
  //     "date": "29",
  //     "rent": "5000"
  //   },
  //   {
  //     'id': 4,
  //     "tenant": "Mostafa Hamdy",
  //     "address": "13 Azhar St.",
  //     "date": "20",
  //     "rent": "5000"
  //   },
  // ];
  List<Apartment> apartments;
  bool loaded = false;

  var balance;
  Widget bigScreen() {
    return !loaded ?Center(child: CircularProgressIndicator(),): Scaffold(
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
                          child: Text("$balance"),
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
                      DataCell(Text(f.address)),
                      DataCell(Text(f.name)),
                      DataCell(Text(f.rate.toString())),
                      DataCell(Text(f.dueday.toString())),
                    ])))),
          ),
        ],
      ),
    );
  }

  Widget smallScreen() {
    return !loaded ?Center(child: CircularProgressIndicator(),):Scaffold(
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
                    title: Text(i.address),
                    trailing: Text("${i.dueday}"),
                    subtitle: Text(i.name + "\n" + i.rate.toString()),
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

  void request() async {
    var req = await http.get("https://abuel3rif-api.herokuapp.com/api/apartments/ahmedmgh67@gmail.com");
    var decoded = jsonDecode(req.body);
    for (var i = 0; i < decoded.length; i++) {
      apartments.add(
        Apartment(
          decoded[i]["address"],
          decoded[i]["dueday"],
          decoded[i]["email"],
          decoded[i]["name"],
          decoded[i]["phone"],
          decoded[i]["rate"],
        ),
      );
    }
    // var req2 = await http.get("url");
    // var decoded2 = jsonDecode(req2.body);
    // balance = decoded2["balance"];
    setState(() {
      loaded = true;
    });
  }
}
