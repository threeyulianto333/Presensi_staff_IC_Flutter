import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card.dart';

Widget lvRiwayat = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemBuilder: (context, position) {
      return cvRiwayat;
    },
    itemCount: 'Testing'.length,
  ),
);
