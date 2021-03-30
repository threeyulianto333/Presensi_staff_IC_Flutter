import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:presensi_ic_staff/UI/Element/textView.dart';

import 'imgVector.dart';

Widget cvRiwayat = Card(
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [tvTanggal, imgIcoIn, txtJM, imgIcoOut, txtJK],
    ),
  ),
);
