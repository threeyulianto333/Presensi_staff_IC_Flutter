import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget imgBgWave1 = Container(
    child: SizedBox(
        width: double.infinity,
        child: SvgPicture.asset("lib/assets/images/login/bg_wave1_biru.svg")));

Widget imgIconLogo =
    Container(child: SvgPicture.asset("lib/assets/images/login/img_logo.svg"));

Widget imgBgWave2 = Container(
    child: SizedBox(
        width: double.infinity,
        child: SvgPicture.asset("lib/assets/images/login/bg_wave2.svg")));

Widget imgBgBiru = Container(
    child: SizedBox(
        width: double.infinity,
        child: SvgPicture.asset("lib/assets/images/login/img_bg_biru.svg")));

Widget imgDash = Container(
    child: SvgPicture.asset("lib/assets/images/login/img_dashboard.svg"));

Widget imgDashPng = Container(
    child:
        Image(image: AssetImage('lib/assets/images/login/img_dashboard.png')));

Widget imgIcoIn = Container(
  child: SvgPicture.asset("lib/assets/images/login/ico_in.svg"),
);

Widget imgIcoOut = Container(
  child: SvgPicture.asset("lib/assets/images/login/ico_out.svg"),
);

Widget imgKotakTgl = Container(
  child: SvgPicture.asset('lib/assets/images/login/img_dashTanggal.svg'),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15)),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 3,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
);

Widget imgScan = Container(
  child: SvgPicture.asset("lib/assets/images/login/ico_scan.svg"),
);

Widget imgScan2 = Container(
  child: SvgPicture.asset("lib/assets/images/login/btn_presensi.svg"),
);

Widget imgAkun = Container(
  child: SvgPicture.asset("lib/assets/images/login/btn_akun.svg"),
);

Widget imgRiwayat = Container(
  child: SvgPicture.asset("lib/assets/images/login/btn_riwayat.svg"),
);
