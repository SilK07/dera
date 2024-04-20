import 'package:flutter/material.dart';

class dera_details extends StatefulWidget {
  const dera_details({super.key});

  @override
  State<dera_details> createState() => _dera_detailsState();
}

class _dera_detailsState extends State<dera_details> {
  TextEditingController sheep = TextEditingController();
  TextEditingController goat = TextEditingController();
  TextEditingController horse = TextEditingController();
  TextEditingController bull = TextEditingController();
  TextEditingController cow = TextEditingController();
  TextEditingController ox = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/india.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Dera Details"),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: ListView(
              children: [
                TextField(
                  controller: sheep,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Number Of Sheeps"),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: goat,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Number Of Goats"),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: horse,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Number Of Horses"),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: bull,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Number Of Bulls"),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: cow,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Number Of Cows"),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: ox,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Number Of OX"),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home_page');
              },
              child: Text('Submit')),
        ),
      ),
    );
  }
}
