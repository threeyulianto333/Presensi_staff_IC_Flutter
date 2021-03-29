import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QRPage extends StatefulWidget {
  QRPage({Key key, this.btnLogin}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final ElevatedButton btnLogin;

  @override
  _QRPage createState() => _QRPage();
}

class _QRPage extends State<QRPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: new BoxConstraints.loose(
            new Size(600, 500),
          ),
          // child: new QrCamera(
          //   qrCodeCallback: (code) {
          //     print(code);
          //   },
          // ),
          child: (Column(
            children: <Widget>[],
          ))),
    );
  }
}
