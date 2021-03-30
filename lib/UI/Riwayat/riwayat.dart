import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:presensi_ic_staff/UI/Element/ListView.dart';
import 'package:presensi_ic_staff/UI/Element/button.dart';
import 'package:presensi_ic_staff/UI/Element/imgVector.dart';
import 'package:presensi_ic_staff/UI/Element/pack.dart';
import 'package:presensi_ic_staff/UI/Element/textView.dart';

class RiwayatPage extends StatefulWidget {
  RiwayatPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RiwayatPage createState() => _RiwayatPage();
}

class _RiwayatPage extends State<RiwayatPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: tvRiwayatAppBar,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[barAtasRiwayat, lvRiwayat],
          ),
        ),
      ),
      floatingActionButton: Container(width: 80, height: 80, child: FabScan()),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
