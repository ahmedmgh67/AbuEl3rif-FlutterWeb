import 'package:flutter_web/material.dart';
import '../utils/responsiveWidget.dart';
import 'dart:html' as html;
import './dashboardPage.dart';

class ChangeTenantPage extends StatefulWidget {
  @override
  _ChangeTenantPageState createState() => _ChangeTenantPageState();
}

class _ChangeTenantPageState extends State<ChangeTenantPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: bigScreen(),
      smallScreen: smallScreen(),
    );
  }

  @override
  initState(){
    super.initState();
    //html.window.history.pushState("", "Change Tenant", "/dashboard/changetenant");
    html.window.alert(Uri.base.queryParameters["foo"]);
  }
  var text = DashboardPage().cd.getApartments()[0].address;
  var value = DashboardPage().cd.getApartments()[0].id;
  Widget bigScreen() {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 500.0, vertical: 70.0),
        child: Center(
          child: Card(
            elevation: 70.0,
            child: Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 40.0,),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Change Tenant.",
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 40.0, top: 30.0),
                    ),
                    DropdownButtonFormField(
                      value: value,
                      onChanged: (s) => setState(() => text = s),
                      items: <DropdownMenuItem>[
                        // DropdownMenuItem(
                        //   child: Text("Apartmrnt 1"),
                        //   value: "Apartment 1",
                        // ),
                      ]..addAll(DashboardPage().cd.getApartments().map((f )=> DropdownMenuItem(child: Text(f.address), value: f.id,))),
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Name"),
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Phone"),
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Rent"),
                    ),
                    Container(
                      child: RaisedButton(
                        child: Text("Submit")
                      )
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
                      "Change Tenant.",
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 40.0, top: 30.0),
                  ),
                  DropdownButtonFormField(
                    value: "Apartment 1",
                    items: <DropdownMenuItem>[
                      DropdownMenuItem(
                        child: Text("Apartmrnt 1"),
                        value: "Apartment 1",
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Name"),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Phone"),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Rent"),
                  ),
                  Container(
                      child: RaisedButton(
                        child: Text("Submit")
                      )
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
