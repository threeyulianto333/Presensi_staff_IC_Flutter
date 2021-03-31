import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:presensi_ic_staff/UI/Element/ListView.dart';
import 'package:presensi_ic_staff/UI/Element/button.dart';
import 'package:presensi_ic_staff/UI/Element/imgVector.dart';
import 'package:presensi_ic_staff/UI/Element/pack.dart';
import 'package:presensi_ic_staff/UI/Element/textView.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailRiwayatPage extends StatefulWidget {
  DetailRiwayatPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DetailRiwayatPage createState() => _DetailRiwayatPage();
}

class _DetailRiwayatPage extends State<DetailRiwayatPage> {
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
        title: tvDRiwayatAppBar,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(top: 40), child: imgBgBiru),
                  Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: kotakTglPoin),
                  Container(
                      margin:
                          const EdgeInsets.only(top: 100, left: 30, right: 30),
                      child: Column(
                        children: [
                          imgSeparator,
                          Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [tvKeterlambatan, tvKeterlambatan],
                            ),
                          ),
                        ],
                      )),
                  Container(
                      margin:
                          const EdgeInsets.only(top: 150, left: 30, right: 30),
                      child: Column(
                        children: [
                          imgSeparator,
                          Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [tvPoinDidapat, tvPoinDidapat],
                            ),
                          ),
                          imgSeparator,
                        ],
                      )),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: HexColor('#E8F4FE'),
                  ),
                ),
                // child: imgKotakBiru),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(width: 80, height: 80, child: FabScan()),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
