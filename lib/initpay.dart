import 'package:flutter_web/material.dart';
import './src/pages/payPage.dart';

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
      home: PayPage(),
    );
  }
}

