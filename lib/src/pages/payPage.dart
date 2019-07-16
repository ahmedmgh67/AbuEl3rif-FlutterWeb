import 'package:flutter_web/material.dart';
import '../utils/responsiveWidget.dart';

class PayPage extends StatefulWidget {
  @override
  _PayPageState createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: bigScreen(),
      smallScreen: smallScreen(),
    );
  }

  Widget bigScreen() {
    return Scaffold(
    body: Container(
      margin: EdgeInsets.symmetric(horizontal: 500.0, vertical: 70.0),
      child: Center(
        child: Card(
          elevation: 70.0,
          child: Column(
            children: <Widget>[
              Container(
                child: Text("Pay 5000 EGP.", style: TextStyle(fontSize: 30.0,),),
                margin: EdgeInsets.only(bottom: 40.0, top: 30.0),
              ),
              ListTile( 
                title: Text("Pay with Fawry."),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                title: Text("Credit or Debit Card."),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                title: Text("Cash On Delivery."),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ],
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
          child: Column(
            children: <Widget>[
              Container(
                child: Text("Pay 5000 EGP.", style: TextStyle(fontSize: 30.0,),),
                margin: EdgeInsets.only(bottom: 40.0, top: 30.0),
              ),
              ListTile( 
                title: Text("Pay with Fawry."),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                title: Text("Credit or Debit Card."),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                title: Text("Cash On Delivery."),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
        ),
      ),
    ),
  );
  }
}
