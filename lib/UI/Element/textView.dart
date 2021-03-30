import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:presensi_ic_staff/UI/Login/lupaPass.dart';

Widget txtLupaPass = Container(
    child: Container(
        padding: const EdgeInsets.all(10), child: Text("Lupa akun ?")));

Widget txtPresensi = Container(
  child: Text(
    "Presensi",
    style: TextStyle(fontFamily: 'Nunito', fontSize: 40, color: Colors.white),
  ),
);

Widget txtPresensiBtn = Container(
  child: Text(
    "Presensi",
    style:
        TextStyle(fontFamily: 'Nunito', fontSize: 20, color: Colors.blueAccent),
  ),
);

Widget txtRiwayatBtn = Container(
  child: Text(
    "Riwayat",
    style:
        TextStyle(fontFamily: 'Nunito', fontSize: 20, color: Colors.blueAccent),
  ),
);

Widget txtAkunBtn = Container(
  child: Text(
    "Akun",
    style:
        TextStyle(fontFamily: 'Nunito', fontSize: 20, color: Colors.blueAccent),
  ),
);

Widget txtStaff = Container(
  child: Text(
    "Staff",
    style: TextStyle(fontFamily: 'Nunito', fontSize: 25, color: Colors.white),
  ),
);

Widget txtHi = Container(
  child: Text(
    "Hi, selamat datang Tri !",
    style: TextStyle(fontFamily: 'Nunito', fontSize: 25, color: Colors.white),
  ),
);

Widget txtTanggal = Container(
  child: Text(
    "21-01-2021",
    style: TextStyle(fontFamily: 'Nunito', fontSize: 20, color: Colors.black),
  ),
);

Widget txtPoin = Container(
  child: Text(
    "0\nPoin",
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: 'Nunito',
      fontSize: 20,
      color: Colors.black,
    ),
  ),
);

Widget txtJM = Container(
  child: Text("08.00",
      style:
          TextStyle(fontFamily: 'Nunito', fontSize: 20, color: Colors.black)),
);

Widget txtJK = Container(
  child: Text("16.00",
      style:
          TextStyle(fontFamily: 'Nunito', fontSize: 20, color: Colors.black)),
);

Widget tvLupaPassAppBar = Text(
  "Lupa Password",
  style: TextStyle(
    color: Colors.black,
  ),
);

Widget tvRiwayatAppBar = Text(
  "Riwayat",
  style: TextStyle(
    color: Colors.black,
  ),
);

class TvLupaPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 100),
      child: InkWell(
        child: Text("Lupa akun ?"),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LupaPassPage()));
        },
      ),
    );
  }
}

Widget txtInsResetPass = Container(
  child: Text(
      "Masukkan email, tekan Reset Password, Kemudian ikuti instruksi di Email.",
      style:
          TextStyle(fontFamily: 'Nunito', fontSize: 20, color: Colors.black)),
);

Widget tvPoin = Container(
  child: Text("Poin",
      style:
          TextStyle(fontFamily: 'Nunito', fontSize: 20, color: Colors.black)),
);

Widget tvFilter = Container(
  child: Text("Filter",
      style:
          TextStyle(fontFamily: "Nunito", fontSize: 20, color: Colors.black)),
);

Widget tvTanggal = Text(
  "26-1-2021",
  style: TextStyle(fontFamily: "Nunito", fontSize: 30, color: Colors.black),
);
