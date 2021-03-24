import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:presensi_ic_staff/UI/Element/button.dart';
import 'package:presensi_ic_staff/UI/Element/textView.dart';

import 'imgVector.dart';

Widget kotakTanggal = Container(
  child: Row(children: <Widget>[
    Stack(children: <Widget>[
      Positioned.fill(child: imgKotakTgl),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(right: 20), child: txtTanggal),
            Container(
              child: Column(children: <Widget>[
                Row(children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: imgIcoIn),
                  txtJM
                ]),
                Row(children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: imgIcoOut),
                  txtJK
                ]),
              ]),
            ),
          ],
        ),
      ),
    ]),
  ]),
);

Widget kotakPoin = Container(
  child: Row(
    children: <Widget>[
      Stack(
        children: <Widget>[
          Positioned.fill(child: imgKotakTgl),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                txtPoin,
              ],
            ),
          ),
        ],
      ),
    ],
  ),
);

Widget kotakTglPoin = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(margin: const EdgeInsets.only(right: 20), child: kotakTanggal),
      kotakPoin
    ],
  ),
);

Widget rangBtnDash = Container(
  margin: const EdgeInsets.only(top: 120),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(margin: const EdgeInsets.only(right: 20), child: btnScan),
      Container(margin: const EdgeInsets.only(right: 20), child: btnRiwayat),
      btnAkun
    ],
  ),
);

Widget dashMenu = Padding(
  padding: const EdgeInsets.only(top: 250),
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(margin: const EdgeInsets.only(top: 40), child: imgBgBiru),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: kotakTglPoin),
            rangBtnDash,
          ],
        ),
      ],
    ),
  ),
);
