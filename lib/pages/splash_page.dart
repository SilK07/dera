import 'package:dera/main.dart';
import 'package:dera/pages/login_page.dart';
import 'package:flutter/material.dart';

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
        context, MaterialPageRoute(builder: (context) => MyApp()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('logo.png'),
      ),
    );
  }
}
