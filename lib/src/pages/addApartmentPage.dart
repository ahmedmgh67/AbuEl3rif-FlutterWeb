import 'package:flutter_web/material.dart';
import '../utils/responsiveWidget.dart';
import 'dart:html' as html;
import 'dart:convert';
import 'package:http/http.dart' as http;

class AddApartmentPage extends StatefulWidget {
  @override
  _AddApartmentPageState createState() => _AddApartmentPageState();
}

class _AddApartmentPageState extends State<AddApartmentPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: bigScreen(),
      smallScreen: smallScreen(),
    );
  }

  @override
  initState() {
    super.initState();
    // html.window.history.pushState("", "Add Apartment", "/dashboard/addapartment");
  }

  String name;
  String address;
  String rate;
  String dueday;
  String phone;

  Widget bigScreen() {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 500.0, vertical: 70.0),
        child: Center(
          child: Card(
            elevation: 70.0,
            child: Center(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 40.0,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Add Apartment",
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 40.0, top: 30.0),
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Address"),
                      onChanged: (s) => address = s,
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Name"),
                      onChanged: (s) => name = s,
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Phone"),
                      onChanged: (s) => phone = s,
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Rent"),
                      onChanged: (s) => rate = s,
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Due Day"),
                      onChanged: (s) => dueday = s,
                    ),
                    Container(
                      child: RaisedButton(
                        child: Text("Submit"),
                        onPressed: ()  => submit(),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget smallScreen() {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Center(
          child: Card(
            elevation: 70.0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      "Add Apartment.",
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 40.0, top: 30.0),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Address"),
                    onChanged: (s) => address = s,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Name"),
                    onChanged: (s) => name = s,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Phone"),
                    onChanged: (s) => phone = s,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Rent"),
                    onChanged: (s) => rate = s,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Due Day"),
                    onChanged: (s) => dueday = s,
                  ),
                  Container(
                    child: RaisedButton(
                      child: Text("Submit"),
                      onPressed: () => submit(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void submit() async {
    var req = await http.post(
      "https://abuel3rif-api.herokuapp.com/api/apartments/",
      body: {
        "dueday": dueday,//int.parse(dueday),
        "name": name,
        "phone": phone,
        "rate": rate,//int.parse(rate),
        "address": address,
        "landlord": "ahmedmgh67@gmail.com"
      },
    );
    Navigator.of(context).pop();
    html.window.alert(jsonDecode(req.body).toString());
  }
}
