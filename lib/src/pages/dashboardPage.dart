import 'package:flutter_web/material.dart';
import '../utils/responsiveWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/apartment.dart';
import 'dart:html' as html;
import './changeTenant.dart';
import './addApartmentPage.dart';
import '../models/currentData.dart';

class DashboardPage extends StatefulWidget {
  CurrentData cd = new CurrentData();
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

  @override
  initState() {
    super.initState();
    request();
    //html.window.history.pushState("", "Dashboard", "/dashboard");
  }

  List<Apartment> apartments = [];
  bool loaded = false;

  var balance = "80000";
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
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => AddApartmentPage())),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: RaisedButton(
                      color: Colors.blue,
                      child: Text("Add/Relese Tenant"),
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (_) => ChangeTenantPage()))),
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: FlutterLogo(),
              accountEmail: Text("ahmedmgh67@gmail.com"),
              accountName: Text("Ahmed M. Gamal"),
            ),
            ListTile(
              title: Text("Release / Add Tenant"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => ChangeTenantPage())),
            ),
            ListTile(
              title: Text("Add Apartment"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => AddApartmentPage())),
            ),
          ],
        ),
      ),
      body: apartments == []
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.blue),
                  padding: EdgeInsets.only(right: 5.0, left: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            right: 5.0, top: 5.0), // left: 5.0),
                        child: Text("Balance"),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: 5.0, top: 1.0), // left: 5.0),
                        child:
                            Text("80000 EGP", style: TextStyle(fontSize: 40.0)),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: 5.0, top: 5.0), // left: 5.0),
                        child: Text("Next Month Charge"),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: 5.0, top: 1.0), // left: 5.0),
                        child:
                            Text("20000 EGP", style: TextStyle(fontSize: 40.0)),
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
    var req = await http.get(
      "https://abuel3rif-api.herokuapp.com/api/apartments/ahmedmgh67@gmail.com",
    );
    //headers: {"Access-Control-Allow-Origin": null});
    var decoded = jsonDecode(req.body);
    List<Apartment> apts;

    setState(
      () {
        for (var i = 0; i < decoded.length; i++) {
          apartments.add(
            Apartment(
              decoded[i]["address"],
              decoded[i]["dueday"],
              "", //decoded[i]["email"],
              decoded[i]["name"],
              decoded[i]["phone"],
              decoded[i]["rate"],
              decoded[i]["_id"],
            ),
          );
          DashboardPage().cd.addApartment(
                Apartment(
                  decoded[i]["address"],
                  decoded[i]["dueday"],
                  "", //decoded[i]["email"],
                  decoded[i]["name"],
                  decoded[i]["phone"],
                  decoded[i]["rate"],
                  decoded[i]["_id"],
                ),
              );
        }
      },
    );
    // setState(() {
    //   //loaded = true;
    // apartments = apts;
    // });
  }
}
