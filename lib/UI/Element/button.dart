import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:presensi_ic_staff/UI/Element/imgVector.dart';
import 'package:presensi_ic_staff/UI/Element/pack.dart';
import 'package:presensi_ic_staff/UI/Element/textView.dart';

Widget btnLogin = Container(
  child: Container(
    margin: const EdgeInsets.only(top: 50, bottom: 20),
    child: TextButton(
        child: Text("Login".toUpperCase(), style: TextStyle(fontSize: 20)),
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ))),
        onPressed: () => null),
  ),
);

Widget btnScan = Container(
  child: Center(
    child: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Positioned.fill(child: imgKotakTgl),
            Container(margin: const EdgeInsets.all(0), child: imgScan2)
          ],
        ),
        Container(margin: const EdgeInsets.only(top: 10), child: txtPresensiBtn)
      ],
    ),
  ),
);

Widget btnRiwayat = Container(
  child: Center(
    child: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Positioned.fill(child: imgKotakTgl),
            Container(margin: const EdgeInsets.all(0), child: imgRiwayat)
          ],
        ),
        Container(margin: const EdgeInsets.only(top: 10), child: txtRiwayatBtn)
      ],
    ),
  ),
);

Widget btnAkun = Container(
  child: Center(
    child: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Positioned.fill(child: imgKotakTgl),
            Container(margin: const EdgeInsets.all(0), child: imgAkun)
          ],
        ),
        Container(margin: const EdgeInsets.only(top: 10), child: txtAkunBtn)
      ],
    ),
  ),
);
