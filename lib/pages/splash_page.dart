import 'package:dera/main.dart';
import 'package:dera/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class splash_page extends StatefulWidget {
  const splash_page({super.key});

  @override
  State<splash_page> createState() => _splash_pageState();
}

class _splash_pageState extends State<splash_page> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Loginpage()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            SizedBox(
              height: 200,
            ),
            Image(
              image: AssetImage('assets/images/india-1.png'),
              height: 200,
              width: 900,
            ),
            Image(
              image: AssetImage('assets/images/logo.png'),
              height: 150,
            ),
            SpinKitPouringHourGlassRefined(
              color: Color.fromARGB(1, 4, 106, 56),
              size: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
