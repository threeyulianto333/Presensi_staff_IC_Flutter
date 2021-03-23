import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Stack(children: <Widget>[
                SizedBox(
                    width: double.infinity,
                    child: SvgPicture.asset(
                        "lib/assets/images/login/bg_wave1_biru.svg")),
                Padding(
                    padding: const EdgeInsets.all(100),
                    child: Column(children: <Widget>[
                      SvgPicture.asset("lib/assets/images/login/img_logo.svg"),
                      Text(
                        "Presensi",
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 40,
                            color: Colors.white),
                      ),
                      Text(
                        "Staff",
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 25,
                            color: Colors.white),
                      )
                    ])),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Column(children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Masukkan Email Anda',
                      labelText: 'Email',
                      border: OutlineInputBorder()),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Masukkan Password Anda',
                        labelText: 'Password',
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: const EdgeInsets.only(top: 50, bottom: 20),
                    child: TextButton(
                        child: Text("Login".toUpperCase(),
                            style: TextStyle(fontSize: 20)),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(15)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                        onPressed: () => null),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Text("Lupa akun ?"))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
