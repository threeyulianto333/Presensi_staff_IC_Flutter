import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:presensi_ic_staff/UI/Element/imgVector.dart';
import 'package:presensi_ic_staff/UI/Element/pack.dart';
import 'package:presensi_ic_staff/UI/Element/textView.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _DashboardPage createState() => _DashboardPage();
}

class _DashboardPage extends State<DashboardPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(children: <Widget>[
                imgBgWave2,
                Container(
                    margin: const EdgeInsets.only(top: 50, left: 20),
                    child: txtHi)
              ]),
              Stack(children: <Widget>[imgDashPng, dashMenu]),
            ],
          ),
        ),
      ),
    );
  }
}
