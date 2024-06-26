import 'package:dera/pages/dera_details.dart';
import 'package:dera/pages/existing_search.dart';
import 'package:dera/pages/family_details.dart';
import 'package:dera/pages/home_page.dart';
import 'package:dera/pages/login_page.dart';
import 'package:dera/pages/new_form.dart';
import 'package:dera/pages/profile_page.dart';
import 'package:dera/pages/register_page.dart';
import 'package:dera/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_page(),
      routes: {
        '/login_page': (context) => Loginpage(),
        '/register_page': (context) => register_page(),
        '/home_page': (context) => home_page(),
        '/new_form': (context) => new_form(),
        '/family_details': (context) => family_details(),
        '/dera_details': (context) => dera_details(),
        '/existing_search': (context) => existing_search(),
        '/profile_page': (context) => profile_page(),
      },
    );
  }
}
