import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:presensi_ic_staff/UI/Element/imgVector.dart';
import 'package:presensi_ic_staff/UI/Element/pack.dart';
import 'package:presensi_ic_staff/UI/Element/textView.dart';

Widget dashboardPage = Container(
  child: SingleChildScrollView(
    child: Column(
      children: <Widget>[
        Stack(children: <Widget>[
          imgBgWave2,
          Container(
              margin: const EdgeInsets.only(top: 50, left: 20), child: txtHi)
        ]),
        Stack(children: <Widget>[imgDashPng, dashMenu]),
      ],
    ),
  ),
);
