import 'package:flutter/material.dart';

class existing_search extends StatelessWidget {
  const existing_search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/india.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Search'),
        ),
        body: Center(
            child: Padding(
          padding: EdgeInsets.all(30.0),
          child: ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "DERA ID",
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0))),
              )
            ],
          ),
        )),
      ),
    );
  }
}
