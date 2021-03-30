import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:presensi_ic_staff/UI/Dashboard/dashboard.dart';
import 'package:presensi_ic_staff/UI/Element/imgVector.dart';
import 'package:presensi_ic_staff/UI/Element/pack.dart';
import 'package:presensi_ic_staff/UI/Element/textView.dart';
import 'package:presensi_ic_staff/UI/Element/toast.dart';
import 'package:presensi_ic_staff/UI/Login/login.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:presensi_ic_staff/UI/Riwayat/riwayat.dart';

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

class BtnAkun1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Positioned.fill(child: imgKotakTgl),
                  Container(margin: const EdgeInsets.all(0), child: imgAkun)
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10), child: txtAkunBtn)
            ],
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
        ),
      ),
    );
  }
}

class BtnLupaPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: Text("Reset Password", style: TextStyle(fontSize: 20)),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}

class _BtnScan extends State<BtnScan> {
  String barcode = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () async {
              try {
                String barcode = await BarcodeScanner.scan();
                setState(() {
                  barcode = barcode;
                });
                log('isi dari barcode: $barcode');
              } on PlatformException catch (error) {
                if (error.code == BarcodeScanner.CameraAccessDenied) {
                  setState(() {
                    barcode = 'Izin kamera tidak diizinkan oleh si pengguna';
                  });
                } else {
                  setState(() {
                    barcode = 'Error: $error';
                  });
                }
              }
            },
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Positioned.fill(child: imgKotakTgl),
                    Container(margin: const EdgeInsets.all(0), child: imgScan2)
                  ],
                ),
                Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: txtPresensiBtn),
              ],
            ),
          ),
          Text('Isi Barcode = $barcode'),
        ],
      ),
    );
  }
}

class BtnScan extends StatefulWidget {
  @override
  _BtnScan createState() => new _BtnScan();
}

class BtnQr extends StatefulWidget {
  @override
  _BtnQr createState() => new _BtnQr();
}

class _BtnQr extends State<BtnQr> {
  String barcode = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Positioned.fill(child: imgKotakTgl),
                    Container(margin: const EdgeInsets.all(0), child: imgScan2)
                  ],
                ),
                Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: txtPresensiBtn),
              ],
            ),
            onTap: () async {
              try {
                String barcode = await BarcodeScanner.scan();
                setState(() {
                  this.barcode = barcode;
                });
              } on PlatformException catch (error) {
                if (error.code == BarcodeScanner.CameraAccessDenied) {
                  setState(() {
                    this.barcode =
                        'Izin kamera tidak diizinkan oleh si pengguna';
                  });
                } else {
                  setState(() {
                    this.barcode = 'Error: $error';
                  });
                }
              }
            },
          ),
          Text(
            'Result:$barcode',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class BtnRiwayat extends StatefulWidget {
  @override
  _BtnRiwayat createState() => _BtnRiwayat();
}

class _BtnRiwayat extends State<BtnRiwayat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RiwayatPage()));
          },
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Positioned.fill(child: imgKotakTgl),
                  Container(margin: const EdgeInsets.all(0), child: imgRiwayat)
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10), child: txtRiwayatBtn)
            ],
          ),
        ),
      ),
    );
  }
}

class BtnPoin extends StatefulWidget {
  @override
  _BtnPoin createState() => _BtnPoin();
}

class _BtnPoin extends State<BtnPoin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white70, // background
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: tvPoin,
        ),
        onPressed: () {
          // Toast(isi: 'testing',);
          // Toast();
          final snackBar = SnackBar(
            content: Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}

class BtnFilter extends StatefulWidget {
  @override
  _BtnFilter createState() => _BtnFilter();
}

class _BtnFilter extends State<BtnFilter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white70, // background
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Container(margin: const EdgeInsets.only(right: 10),height: 20, width: 20, child: imgFilter),
              tvFilter,
            ],
          ),
        ),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}

class FabScan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: imgScan,
        ),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        onPressed: () {});
  }
}
