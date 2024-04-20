import 'package:dera/pages/login_page.dart';
import 'package:dera/pages/new_form.dart';
import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/india.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('HOME'),
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey[400],
          child: Column(
            children: [
              DrawerHeader(
                  child: Icon(
                Icons.emoji_people_sharp,
                size: 84,
              )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("H O M E"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/home_page');
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle_rounded),
                title: Text("P R O F I L E"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/profile_page');
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('L O G O U T'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/login_page');
                },
              )
            ],
          ),
        ),
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Hello User,',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                child: Text(
                  "Please Choose",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/new_form');
                  },
                  child: Text('New Entry')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/existing_search');
                  },
                  child: Text('Existing DERA Search'))
            ],
          )),
        ),
      ),
    );
  }
}
